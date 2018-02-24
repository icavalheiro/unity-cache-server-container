FROM node:alpine

COPY cache-server /srv/cache-server
VOLUME [ "/data/cache" ]

WORKDIR /srv/cache-server

RUN npm install -g forever

EXPOSE 8126

CMD [ "forever", "start", "main.js", "--path /data/cache", "--size 214748364800", "--nolegacy" ]