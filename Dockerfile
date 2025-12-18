# Dockerfile cho backend Node.js
FROM node:18-alpine

# Tạo folder app
WORKDIR /app

# Copy package.json và package-lock.json
COPY package*.json ./

# Cài dependencies
RUN npm install

# Copy toàn bộ code vào container
COPY . .

# Expose port (phải trùng với PORT trong backend)
EXPOSE 3001

# Lệnh chạy ứng dụng
CMD ["node", "server.js"]
