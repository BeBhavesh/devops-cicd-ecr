# Use small Node base
FROM node:18-alpine

WORKDIR /usr/src/app

# copy package first to leverage caching
COPY package.json ./

RUN npm ci --only=production

COPY . .

# Expose port for ECS health checks / ALB
EXPOSE 3000

# Use non-root user for security (best practice)
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

CMD ["node", "index.js"]
