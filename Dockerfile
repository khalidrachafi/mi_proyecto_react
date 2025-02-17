# Imagen base de Node.js
FROM node:18-alpine

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar archivos del proyecto
COPY package.json ./
COPY package-lock.json ./
RUN npm install

# Copiar el resto del código
COPY . .

# Compilar el proyecto
RUN npm run build

# Exponer el puerto 3000
EXPOSE 3000

# Comando para iniciar la app
CMD ["npm", "start"]
