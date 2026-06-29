FROM node:24.18-alpine3.23
WORKDIR /app
COPY . .
RUN npm install -g express-generator@4 && express /tmp/foo && cd /tmp/foo && npm install 
EXPOSE 3000
LABEL maintainer="SHUBHAM"
CMD ["npm", "start"]
