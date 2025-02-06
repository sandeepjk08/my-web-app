# Use official Node.js image (change if needed)
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy all files
COPY . .

# Expose port (if running a web app)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]

