FROM node:lts-buster
RUN git clone https://github.com/Levi-Zap/Aizen/root/Aizen-md
WORKDIR /root/Aizen-md
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
