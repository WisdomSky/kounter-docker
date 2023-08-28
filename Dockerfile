FROM node:20.5.1

ENV HOME_REDIRECT_URL=${HOME_REDIRECT_URL:-"https://github.com/kerolloz/kounter"}

ENV DETA_PROJECT_KEY=$DETA_PROJECT_KEY

WORKDIR /var/app

COPY app /var/app

EXPOSE 3000

RUN cd /var/app && npm install

ENTRYPOINT node /var/app/index.js