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
# cat $SYSTEM_USER

configPath="/root/.cloudflared/config.yml"
mkdir -p /root/.cloudflared/
cp -Rv /ssl/* /root/.cloudflared/

# echo $PEM >> /root/.cloudflared/cert.pem
# echo "log: stdout" > $configPath
bashio::log.info "Starting Cloudflare Services"
bashio::log.info "Made with Love from Thailand, Bring to you by RACKSYNC 🇹🇭"
# if bashio::var.has_value "$(bashio::addon.port 4040)"; then
#   echo "web_addr: 0.0.0.0:$(bashio::addon.port 4040)" >> $configPath
# fi
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

if bashio::config.true 'legacy'; then
  LEGACY=" "
  LEGACY="--name ${HOST}"
fi

# if bashio::var.has_value "$(bashio::config 'auth_token')"; then
#   echo "authtoken: $(bashio::config 'auth_token')" >> $configPath
# fi
# if bashio::var.has_value "$(bashio::config 'region')"; then
#   echo "region: $(bashio::config 'region')" >> $configPath
# else
#   echo "No region defined, default region is US."
# fi
# cat $configPath
#configfile=$(cat $configPath)
#bashio::log.info "Configure: \n${configfile}"
# bashio::log.info "Config :file \n${cat /root/.cloudflared/cert.pem}"

echo "#!/usr/bin/env bashio" > go.sh

if bashio::config.true 'no_autoupdate' && bashio::config.true 'legacy'; then
    echo cloudflared $LEGACY --no-autoupdate $FLAG $CRED --hostname "$HOST" --url "$URL" >> go.sh
    bashio::log.info "Running legacy mode with --no-autoupdate flag ⛔️"
elif
    bashio::config.true 'no_autoupdate' && bashio::config.false 'legacy'; then
    echo cloudflared --no-autoupdate $FLAG $CRED --hostname "$HOST" --url "$URL" >> go.sh
    bashio::log.info "Running flag --no-autoupdate 🙅🏼"
elif
    bashio::config.false 'no_autoupdate' && bashio::config.true 'legacy'; then
    echo cloudflared $LEGACY $FLAG $CRED --hostname "$HOST" --url "$URL" >> go.sh
    bashio::log.info "Running legacy mode 👩🏽‍⚖️"
else
    echo cloudflared $FLAG $CRED --hostname "$HOST" --url "$URL" >> go.sh
    bashio::log.info "Normal Running Mode ✅"
fi

if bashio::config 'url' == *"ssh://"* ; then
    bashio::log.info "Origin: SSH (Secure Shell) 👨🏻‍💻"
else
    bashio::log.info "Origin: HTTP 🚀"
fi

chmod +x ./go.sh
./go.sh