FROM node:alpine
 
# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/

RUN apk add --no-cache --virtual .gyp \
        python \
        make \
        g++ \
    && npm install \
    && apk del .gyp
 
# Bundle app source
COPY laravel-echo-server.json /usr/src/app/laravel-echo-server.json
 
EXPOSE 3000
CMD [ "npm", "start" ]