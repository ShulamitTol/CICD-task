FROM node:lts-alpine
ENV NODE_ENV=production
WORKDIR /usr/src/app
COPY ["package.json", "npm-shrinkwrap.json*", "./"]
ENV MY_ARRAY="[1,2,3,4,5]"

# Install project dependencies without updating npm
RUN npm install 
COPY . .
EXPOSE 3000

USER node
CMD ["node", "index.js"]
