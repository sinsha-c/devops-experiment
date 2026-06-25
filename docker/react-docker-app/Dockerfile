# ──────────────────────────────────────────
# Stage 1: Build Stage
# ──────────────────────────────────────────
FROM node:22 AS builder

# Set working directory
WORKDIR /app

# Copy dependency files first (layer caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application source
COPY . .

# Build the React app for production
RUN npm run build

# ──────────────────────────────────────────
# Stage 2: Production Stage
# ──────────────────────────────────────────
FROM nginx:alpine

# Copy built static files from the builder stage
COPY --from=builder /app/dist /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
