FROM alpine

WORKDIR /config

ENV QBT_PROFILE=/config

RUN apk update && apk add --no-cache qbittorrent-nox python3

COPY qBittorrent.conf /config/qBittorrent/config/qBittorrent.conf

VOLUME [ "/config","/downloads" ]

EXPOSE 80

ENTRYPOINT [ "qbittorrent-nox" ]