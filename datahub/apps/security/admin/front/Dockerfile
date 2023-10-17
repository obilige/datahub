FROM centos:centos7.9.2009

RUN mkdir -p /app

WORKDIR /app

RUN yum -y update
RUN yum -y install curl
RUN curl -sL https://rpm.nodesource.com/setup_16.x | bash -
RUN yum -y install nodejs
RUN yum -y install gcc-c++ make
RUN curl -sL https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo
RUN yum -y install yarn

COPY . .

RUN npm -g install pm2

RUN npm install

CMD ["pm2-runtime", "start", "--name", "security_front", "npm", "--", "start"]

