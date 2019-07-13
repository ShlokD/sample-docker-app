# Test web-app to use with Pluralsight courses and Docker Deep Dive book
# Linux x64
FROM alpine

# Install Node and NPM
RUN apk add --update nodejs nodejs-npm

# Copy app to /src
COPY . /src

WORKDIR /src

# Install dependencies
RUN  npm install

EXPOSE 9823

ENTRYPOINT ["node", "./app.js"]