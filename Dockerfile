# 1. Gunakan base image Node.js
FROM node:18-alpine

# 2. Tentukan direktori kerja
WORKDIR /app

# 3. Salin file package.json dan package-lock.json (npm)
COPY package.json package-lock.json ./

# 4. Install dependensi aplikasi menggunakan npm
RUN npm install --production

# 5. Salin semua file ke container
COPY . .

# 6. Jalankan aplikasi
CMD ["node", "src/index.js"]

# 7. Port aplikasi
EXPOSE 3000
