FROM dockerfile/nodejs
MAINTAINER  zhvxxh <zhvxxh@gmail.com>

RUN  npm install -g yo
RUN  npm install -g generator-jhipster
WORKDIR /code
