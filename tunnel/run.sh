#!/usr/bin/env bashio
set -e

# https://github.com/hassio-addons/bashio

#!/usr/bin/env bashio
set +u

CONFIG_PATH=/data/options.json
# SYSTEM_USER=/data/system_user.json

HOST=$(jq --raw-output ".host" $CONFIG_PATH)
URL=$(jq --raw-output ".url" $CONFIG_PATH)
PEM=$(jq --raw-output ".pem" $CONFIG_PATH)
FLAG=$(jq --raw-output ".flag" $CONFIG_PATH)
CREDENTIALS=$(jq --raw-output ".credentials" $CONFIG_PATH)

cat $CONFIG_PATH
configPath="/root/.cloudflared/config.yml"
mkdir -p /root/.cloudflared/
cp -Rv /ssl/* /root/.cloudflared/


bashio::log.info "Starting Cloudflare Services"
bashio::log.info "Made with Love from Thailand, Bring to you by RACKSYNC 🇹🇭"

if bashio::var.has_value "$(bashio::config 'host')"; then
  echo "host: $(bashio::config 'host')" >> $configPath
fi

if bashio::var.has_value "$(bashio::config 'url')"; then
  echo "url: $(bashio::config 'url')" >> $configPath
fi

if bashio::var.has_value "$(bashio::config 'flag')"; then
  echo "flag: $(bashio::config 'flag')" >> $configPath
fi

if bashio::var.has_value "$(bashio::config 'pem')"; then
  echo "$(bashio::config 'pem')" >> /root/.cloudflared/cert.pem
fi

if bashio::var.has_value "$(bashio::config 'credentials')"; then
  CRED="--credentials-file /root/.cloudflared/${CREDENTIALS}"
else
  CRED=" "
fi


echo "#!/usr/bin/env bashio" > go.sh

if bashio::config.false 'no_autoupdate'; then
    echo cloudflared tunnel $FLAG $CRED --name "$HOST" --hostname "$HOST" --url "$URL" >> go.sh
    bashio::log.info "Running with auto-update 🛑"
    bashio::log.info "Auto-Update may cause your system to be unstable"
else
    echo cloudflared tunnel --no-autoupdate $FLAG $CRED --name "$HOST" --hostname "$HOST" --url "$URL" >> go.sh
    bashio::log.info "Running without auto-update ✅ "

fi

chmod +x ./go.sh
./go.sh