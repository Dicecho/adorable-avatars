FROM node:10.18.1-alpine3.9

WORKDIR /usr/app/avatars

COPY . .

RUN yarn cache clean
RUN yarn install
RUN yarn build

ENV AVATARS_PORT=8080

EXPOSE 8080

USER node

ENTRYPOINT ["yarn"]
CMD ["start"]
