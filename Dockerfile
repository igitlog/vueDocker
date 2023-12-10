FROM node:18.16.1
WORKDIR usr/src/app
COPY package*.json ./
EXPOSE 5173
RUN npm install
COPY . .
ENV NODE_ENV=dev
CMD ["npm","run","dev"]