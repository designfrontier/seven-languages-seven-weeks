FROM node:6.2

RUN groupadd -r app && useradd -r -g app app

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app


EXPOSE 3000

CMD [ "node", "app.js" ]
