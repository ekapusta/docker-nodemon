FROM node:6-alpine
MAINTAINER Dmitry Romanov "dmitry.romanov85@gmail.com"

ENV PHANTOMJS_VERSION 2.1.1
COPY *.patch /
RUN apk add --no-cache --virtual .build-deps \
		python

RUN ["npm", "install", "-g", "nodemon"]

VOLUME ["/usr/src/app"]
WORKDIR /usr/src/app

ENTRYPOINT ["nodemon"]
CMD ["./bin/www"]
