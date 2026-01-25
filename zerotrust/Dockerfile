ARG BUILD_FROM
FROM $BUILD_FROM

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

ARG BUILD_ARCH
ENV BUILD_ARCH=$BUILD_ARCH

RUN set -x \
    && if [ "${BUILD_ARCH}" = "armhf" ]; then \
        CLOUDFLARED_ARCH="cloudflared-linux-arm"; \
    elif [ "${BUILD_ARCH}" = "armv7" ]; then \
        CLOUDFLARED_ARCH="cloudflared-linux-arm"; \
    elif [ "${BUILD_ARCH}" = "aarch64" ]; then \
        CLOUDFLARED_ARCH="cloudflared-linux-arm64"; \
    elif [ "${BUILD_ARCH}" = "amd64" ]; then \
        CLOUDFLARED_ARCH="cloudflared-linux-amd64"; \
    elif [ "${BUILD_ARCH}" = "i386" ]; then \
        CLOUDFLARED_ARCH="cloudflared-linux-386"; \
    else \
        echo 'INVALID ARCHITECTURE'; exit 1; \
    fi \
    && wget -O cloudflared "https://github.com/cloudflare/cloudflared/releases/latest/download/${CLOUDFLARED_ARCH}" \
    && mv cloudflared /usr/bin/cloudflared \
    && chmod 755 /usr/bin/cloudflared \
    && rm -rf /tmp/*

COPY rootfs /
RUN chmod a+x /etc/services.d/cloudflared/run /etc/services.d/cloudflared/finish

# Add Home Assistant labels
LABEL \
    io.hass.name="Cloudflare Tunnel Zero Trust" \
    io.hass.description="Cloudflare Tunnel from RACKSYNC.COM with metrics support" \
    io.hass.version="2026.2.1" \
    io.hass.type="addon" \
    io.hass.arch="armhf|armv7|aarch64|amd64|i386"

# Add healthcheck to monitor cloudflared process
HEALTHCHECK --interval=30s --timeout=10s --start-period=10s --retries=3 \
    CMD pgrep -x cloudflared > /dev/null || exit 1

WORKDIR /
