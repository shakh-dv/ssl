FROM node:16-alpine as build-stage

WORKDIR /app
RUN npm install -g pnpm@7.22.0
COPY package.json pnpm-lock.yaml ./
RUN pnpm i --shamefully-hoist --frozen-lockfile
COPY .. .

FROM build-stage as prod
RUN pnpm build
CMD pnpm start:prod

FROM build-stage as dev
CMD pnpm dev
