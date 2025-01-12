FROM node:14

RUN curl https://install.meteor.com/ | sh

WORKDIR /app
COPY . /app

RUN meteor npm install
CMD ["meteor", "--production", "--port", "3000"]
