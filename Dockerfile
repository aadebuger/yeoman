FROM dockerfile/nodejs
MAINTAINER  zhvxxh <zhvxxh@gmail.com>
RUN apt-get update 
RUN apt-get install -y socat
RUN  npm install -g yo
RUN  npm install -g bower

#RUN  npm install -g grunt
#RUN  npm install -g phantomjs
RUN  npm install -g generator-jhipster
RUN npm install -g generator-backbone
RUN  npm install -g generator-webapp
RUN npm install -g grunt-cli
RUN adduser --disabled-password --gecos "" yeoman; \
  echo "yeoman ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
ENV HOME /home/yeoman
USER yeoman
WORKDIR /home/yeoman/code
#RUN yo backbone mytestapp
