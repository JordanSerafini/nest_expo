# Utilisez une image de base officielle de Node.js (choisissez une version compatible avec votre application)
FROM node:22-alpine

# Créez un répertoire de travail pour votre application
WORKDIR /backend

# Copiez le fichier package.json et package-lock.json
COPY package*.json ./

# Installez les dépendances
RUN npm install

# Copiez le reste de l'application
COPY . .

# Construisez l'application (si vous utilisez TypeScript)
RUN npm run build

# Prisma: Générer les fichiers Prisma client
RUN npx prisma generate

# Exposez le port que l'application utilisera
EXPOSE 3000

# Démarrez l'application
CMD ["npm", "run", "start:dev"]
