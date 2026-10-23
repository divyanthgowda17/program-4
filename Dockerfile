
FROM node:18 AS build
WORKDIR /app
COPY package*.json ./
RUN npm install 
COPY . .

FROM node:18-slim
WORKDIR /app
COPY --from=buld /app /app
EXPOSE 3000
CMD ["node","index.js"]

