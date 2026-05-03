# 1. Gunakan base image Node.js versi LTS yang ringan (Alpine)
FROM node:18-alpine

# 2. Tentukan direktori kerja di dalam container
WORKDIR /app

# 3. Salin file package.json dan package-lock.json untuk install dependensi
COPY package.json yarn.lock ./

# 4. Install dependensi aplikasi menggunakan yarn (sesuai bawaan repo ini)
RUN yarn install --production

# 5. Salin semua file dari folder lokal ke folder /app di container
COPY . .

# 6. Jalankan aplikasi menggunakan command node
CMD ["node", "src/index.js"]

# 7. Informasikan bahwa aplikasi ini berjalan di port 3000
EXPOSE 3000
