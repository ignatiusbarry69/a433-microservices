# ambil image node  14 yg alpine supaya ringan
FROM node:14.5.0-alpine
#set workdir sekaligus buat folder /app dlm image
WORKDIR /app
#copy semua file di directory Dockerfile saat ini ke image
COPY . .
#set env
ENV NODE_ENV=production DB_HOST=item-db
#install build
RUN npm install --production --unsafe-perm && npm run build
#expose port yg dibuka dlm image
EXPOSE 8080
#run start
CMD [ "npm","start" ]
