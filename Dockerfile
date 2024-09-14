# Use an official Node.js runtime as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Define environment variables (optional if you're using .env)
ENV REACT_APP_API_BASE_URL=${REACT_APP_API_BASE_URL}

# Build the React app for production
RUN npm run build

# Serve the app using a simple server like serve
RUN npm install -g serve

# Command to run the app
CMD ["serve", "-s", "build"]
