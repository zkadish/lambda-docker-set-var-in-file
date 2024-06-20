FROM node:20-alpine3.18

WORKDIR /node/app

ENV NODE_ENV=development

# Install prerequisites
RUN apk --no-cache add curl

COPY app.js ./

COPY update-index.sh ./
RUN chmod +x update-index.sh

ENTRYPOINT [ "sh", "update-index.sh" ]
# CMD [ "node", "app.js" ]
