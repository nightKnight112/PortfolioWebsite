# Use the official Node.js image as a base image with specific version
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and yarn.lock to the working directory
COPY package.json yarn.lock ./

# Install dependencies using yarn
RUN yarn install

# Copy the remaining application code to the working directory
COPY . .

# Build the React application
RUN yarn build

# Expose the port the app runs on
EXPOSE 4500

# Start the application
CMD ["yarn", "start"]
