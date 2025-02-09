# Use the node:19.7.0-alpine base image
FROM node:19.7.0-alpine

# Set the environment variable NODE_ENV with a value of production.
ENV NODE_ENV=production

RUN mkdir /labone && chown node:node /labone

WORKDIR /labone

USER node

COPY --chown=node:node . .

RUN npm install

EXPOSE 3000

CMD ["node", "src/index.js"]


