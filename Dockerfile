FROM node:8

COPY index.js /app/index.js
COPY package.json /app/package.json

WORKDIR /app

RUN npm config set registry http://nexus:8081/repository/npmjs.com-proxy && \
    npm install

EXPOSE 3000

CMD ["node", "/app/index.js"]
