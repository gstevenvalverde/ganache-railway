# Usa una imagen base de Node.js
FROM node:18

# Establece el directorio de trabajo
WORKDIR /app

# Instala Ganache CLI
RUN npm install -g ganache-cli

# Expón el puerto 8545
EXPOSE 8545

# Ejecuta Ganache CLI con configuraciones predeterminadas
CMD ["ganache-cli", "-h", "0.0.0.0", "-p", "8545", "-d"]
