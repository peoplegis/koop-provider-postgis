FROM node:12
RUN mkdir -p /srv/www/koop
ADD package.json /srv/www/koop
WORKDIR /srv/www/koop
RUN npm install
ADD . /srv/www/koop
EXPOSE 9000
ENTRYPOINT ["/usr/local/bin/node", "/srv/www/koop/server.js"]
