FROM alpine

RUN apk update && apk add --no-cache qbittorrent-nox python3

COPY qBittorrent.conf /config/qBittorrent/config/qBittorrent.conf

VOLUME [ "/config" ]

EXPOSE 80

ENTRYPOINT [ "qbittorrent-nox","--webui-port=80","--profile=/config" ]