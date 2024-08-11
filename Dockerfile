#ambil base image node terbaru yg alpine
FROM node:22.6.0-alpine
#pindah/buat workdir app
WORKDIR /app
#copy semua file disini ke image
COPY . .
#install dependency sesaat setelah container jalan
RUN npm install
#expose port app sesuai env bawaan
EXPOSE 3001
#run command utk start service
CMD ["npm", "start"]