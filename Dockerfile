# FROM node:22-alpine

# WORKDIR /app

# COPY package*.json .

# RUN npm install

# COPY . .

# EXPOSE 3001

# CMD ["npm","start"]


FROM node:22-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
RUN npm install -g serve
EXPOSE 80
CMD ["serve", "-s", "build", "-l", "80"]
