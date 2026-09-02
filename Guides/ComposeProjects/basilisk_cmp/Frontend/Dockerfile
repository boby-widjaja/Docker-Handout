FROM node:22.23.2 AS builder
WORKDIR /build
COPY basilisk-vue/package*.json ./
RUN npm ci
COPY basilisk-vue/. .
ENV VITE_SERVER_DOMAIN=localhost
ENV VITE_SERVER_PORT=8005
RUN npm run build

FROM node:22.23.2
LABEL maintainer="Boby"
LABEL version="1.0"
LABEL description="Basilisk Web Client-Side"
WORKDIR /app
COPY --from=builder /build/dist ./dist
RUN npm install -g http-server
EXPOSE 8006
ENTRYPOINT ["npx", "http-server", "dist", "--port", "8006", "-a", "0.0.0.0"]