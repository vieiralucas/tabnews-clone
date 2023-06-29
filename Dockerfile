FROM node:lts-hydrogen

WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .
RUN npm run build

CMD ["npm",  "start"]
