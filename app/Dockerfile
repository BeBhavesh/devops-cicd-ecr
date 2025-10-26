# Use a lightweight Node.js base image
FROM node:18-alpine

# Set working directory inside container
WORKDIR /usr/src/app

# Copy application code to container
COPY . .

# Expose the port your app is running on (e.g., 3000 for Express.js)
EXPOSE 3000

# Run the application (replace index.js with your main file)
CMD ["node", "index.js"]
