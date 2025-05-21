# Dockerfile
FROM node:18-alpine AS builder

WORKDIR /app

COPY . .

RUN corepack enable && corepack prepare pnpm@latest --activate
RUN pnpm install
RUN pnpm build

FROM node:18-alpine AS runner

WORKDIR /app

ENV NODE_ENV=production
COPY --from=builder /app ./

EXPOSE 3000

CMD ["pnpm", "start"]
