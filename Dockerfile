FROM nginx:alpine
LABEL maintainer="Xin Hu <hoosin.git@gmail.com>"

# Install nvm with node and npm
RUN apk add --no-cache --repository http://nl.alpinelinux.org/alpine/edge/main libuv 
RUN apk add --no-cache --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/main nodejs=16.14.2-r0 npm=8.1.3-r0 
RUN apk add --no-cache --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community yarn=1.22.17-r0 
RUN echo "NodeJS Version:" "$(node -v)" 
RUN echo "NPM Version:" "$(npm -v)" 
RUN echo "Yarn Version:" "$(yarn -v)"
