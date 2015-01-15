FROM dockerfile/nodejs
MAINTAINER  zhvxxh <zhvxxh@gmail.com>

RUN  npm install -g yo
RUN  npm install -g generator-jhipster
RUN npm install -g generator-backbone
RUN adduser --disabled-password --gecos "" yeoman; \
  echo "yeoman ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
ENV HOME /home/yeoman
USER yeoman
WORKDIR /home/yeoman
RUN yo backbone mytestapp
