# Base image for Node.js
FROM node:18-alpine

# Set the working directory for the container
WORKDIR /app

# Copy both frontend and backend into the container
COPY ./frontend ./frontend
COPY ./backend ./backend

# Install backend dependencies
WORKDIR /app/backend
RUN npm install

# Install frontend dependencies
WORKDIR /app/frontend
RUN npm install

# Expose ports for both backend and frontend
EXPOSE 5000   
EXPOSE 5173  # Frontend (default Vite port)

# Start both frontend and backend
WORKDIR /app
CMD ["sh", "-c", "npm run dev --prefix backend & npm run dev --prefix frontend"]
