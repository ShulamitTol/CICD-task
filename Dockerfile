FROM node:lts-alpine
ENV NODE_ENV=production
WORKDIR /usr/src/app
COPY ["package.json", "npm-shrinkwrap.json*", "./"]


# Install project dependencies without updating npm
RUN npm install 
COPY . .
EXPOSE 3000

USER node
CMD ["node", "index.js"]
