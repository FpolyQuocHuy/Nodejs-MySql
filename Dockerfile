
FROM node:18

WORKDIR /src

COPY package*.json ./

# RUN npm install && npm install pm2 -g
RUN npm install 

COPY . .

CMD [ "npm", "start" ]
# CMD [ "pm2-runtime", "start", "npm", "--", "run", "start" ]
