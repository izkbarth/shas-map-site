FROM node:20-alpine
RUN npm install -g serve
WORKDIR /app
COPY index.html digital_map.html ./
ENV PORT=3000
EXPOSE 3000
CMD ["sh", "-c", "serve -s . -l ${PORT}"]
