FROM node:8

COPY package.json /app/package.json

WORKDIR /app

RUN npm config set registry http://nexus:8081/repository/npmjs.com-proxy && \
    npm install

COPY index.js /app/index.js

EXPOSE 3000

CMD ["node", "/app/index.js"]
