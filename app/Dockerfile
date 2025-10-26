# Stage 1: Build the app and install dependencies
FROM node:18-alpine AS build

WORKDIR /usr/src/app

COPY package.json package-lock.json ./

# Install all dependencies, including dev dependencies (for the build stage)
RUN npm install

# Copy the rest of the app
COPY . .

# Stage 2: Create the production image (No npm install here)
FROM node:18-alpine AS production

WORKDIR /usr/src/app

COPY --from=build /usr/src/app /usr/src/app

# Install only production dependencies
RUN npm ci --only=production

# Expose port for ECS health checks / ALB
EXPOSE 3000

# Run the application
CMD ["node", "index.js"]
