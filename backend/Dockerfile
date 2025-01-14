# Use Node.js as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json from the backend directory to /app inside the container
COPY ./backend/package.json ./backend/package-lock.json /app/

# Install dependencies
RUN npm install

# Copy the backend code into the container
COPY ./backend/ /app/

# Expose the backend port
EXPOSE 5000

# Start the backend using nodemon
CMD ["npm", "run", "server"]
