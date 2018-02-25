FROM node:alpine

COPY cache-server /srv/cache-server
VOLUME [ "/data/cache" ]

WORKDIR /srv/cache-server

EXPOSE 8126

CMD [ "node", "main.js", "--path /data/cache", "--size 214748364800", "--nolegacy" ]