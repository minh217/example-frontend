FROM node

WORKDIR /website

COPY . .

RUN apt-get update &&  apt-get install -y nodejs && apt-get install -y npm

RUN apt-get install -y xsel

RUN npm install

RUN npm run build

RUN npm install -g serve

EXPOSE 5000

CMD ["serve","-s","-l","5000","build"]
