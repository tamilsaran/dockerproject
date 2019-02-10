FROM node

RUN yum update && yum upgrade -y \
    && yum clean

RUN mkdir /app
WORKDIR /app

COPY package.json /app/
RUN npm install --only=production

COPY src /app/src

EXPOSE 3000

CMD [ "rpm", "start" ]
