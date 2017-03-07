FROM node:7
MAINTAINER Dmitry Romanov "dmitry.romanov85@gmail.com"

RUN ["npm", "install", "-g", "nodemon"]
RUN ["npm", "install", "-g", "phantomjs"]

VOLUME ["/usr/src/app"]
WORKDIR /usr/src/app

ENTRYPOINT ["nodemon"]
CMD ["./bin/www"]
