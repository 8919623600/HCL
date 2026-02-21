# Use official Node image
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy package files first (if you have them)
COPY package*.json ./

# Install dependencies (only if package.json exists)
RUN npm install || true

# Copy remaining files
COPY . .

# Expose app port (change if different)
EXPOSE 3000

# Run the app
CMD ["node", "index.js"]
