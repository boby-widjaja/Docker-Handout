#Menggunakan web server nginx berbasis alpine linux sebagai base image. Karena kita hanya ingin menjalankan web server saja.
FROM nginx:alpine

# Environment variable ini akan dikirim ke container dan akan di gunakan di aplikasi untuk dituliskan contentnya.
ENV NAME="Boby Widjaja"
ENV JOB="Developer"
ENV DEPARTMENT="IT"

# Copy semua html dan js yang ada di dpeloy ke dalam nginx directory.
COPY deploy/ /usr/share/nginx/html
# Copy entrypoint shell script ke root directory container.
COPY entrypoint.sh /entrypoint.sh

# Berikan permission untuk mengeksekusi entrypoint.sh
RUN chmod +x /entrypoint.sh

#Shell script ini akan meng-convert config.template.js menjadi config.js dengan mengganti 
#variable yang ada di dalamnya dengan environment variable yang sudah kita buat sebelumnya.
CMD ["/entrypoint.sh"]