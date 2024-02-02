# Bắt đầu từ image chứa Node.js phiên bản mới nhất
FROM node:latest

# Thiết lập thư mục làm việc trong container
WORKDIR /usr/src/app

# Copy tất cả nội dung từ thư mục hiện tại vào /usr/src/app/ trong container
COPY . .

# Chạy lệnh npm install để cài đặt các dependencies
RUN npm install

# Expose cổng 3000 của container
EXPOSE 3000

# Thiết lập lệnh để chạy ứng dụng
CMD ["node", "app.js"]
