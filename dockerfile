# Bắt đầu từ phiên bản mới nhất của NodeJS image
FROM node:15.11.0-stretch

# Copy file package.json từ local host sang thư mục hiện tại trong ảnh
COPY package.json ./

# Chạy lệnh npm install để cài đặt các thư viện
RUN npm install

# Sao chép tập tin server.js vào thư mục /usr/src/app/
COPY server.js /usr/src/app/

# Expose cổng 8080
EXPOSE 8080

# Thiết lập lệnh để chạy ứng dụng
CMD ["node", "/usr/src/app/server.js"]
