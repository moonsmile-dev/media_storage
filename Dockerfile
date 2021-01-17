FROM node:14.14.0-alpine3.12

COPY . ./app

WORKDIR /app

RUN npm i -g pnpm
RUN pnpm install

EXPOSE 3000

CMD ["pnpm", "start"]
