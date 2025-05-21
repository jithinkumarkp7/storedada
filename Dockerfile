# Stage 1: Build the app
FROM node:18-alpine AS builder

WORKDIR /app

# Copy dependencies and install
COPY package*.json ./
RUN npm install

# Copy everything and build
COPY . .
RUN npm run build

# Stage 2: Run the app
FROM node:18-alpine AS runner

WORKDIR /app

ENV NODE_ENV=production

# Copy all files from builder stage
COPY --from=builder /app ./

EXPOSE 3000

CMD ["npm", "start"]
