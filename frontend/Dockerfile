FROM node:14

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# Construisez l'application React
RUN npm run build

# Utilisez `serve` pour servir l'application
RUN npm install -g serve
CMD ["serve", "-s", "build"]
