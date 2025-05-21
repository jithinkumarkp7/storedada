# Dockerfile
FROM node:18-alpine AS builder

WORKDIR /app

COPY . .

RUN corepack enable && corepack prepare npm@latest --activate
RUN npm install
RUN npm build

FROM node:18-alpine AS runner

WORKDIR /app

ENV NODE_ENV=production
COPY --from=builder /app ./

EXPOSE 3000

CMD ["npm", "start"]
