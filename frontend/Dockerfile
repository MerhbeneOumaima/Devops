# Use Node.js as the base image for frontend
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY frontend/package.json frontend/package-lock.json /app/

# Install dependencies
RUN npm install

# Copy the frontend code into the container
COPY frontend/ /app/

# Expose the frontend port
EXPOSE 3000

# Start the frontend using vite
CMD ["npm", "run", "dev"]
