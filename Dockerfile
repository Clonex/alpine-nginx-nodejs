FROM node:16-alpine AS node
FROM nginx:alpine

COPY --from=node /usr/lib /usr/lib
COPY --from=node /usr/local/share /usr/local/share
COPY --from=node /usr/local/lib /usr/local/lib
COPY --from=node /usr/local/include /usr/local/include
COPY --from=node /usr/local/bin /usr/local/bin

RUN echo "NodeJS Version:" "$(node -v)" 
RUN echo "NPM Version:" "$(npm -v)" 
RUN echo "Yarn Version:" "$(yarn -v)"