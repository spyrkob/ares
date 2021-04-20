FROM library/fedora:latest
RUN curl -sL https://dl.yarnpkg.com/rpm/yarn.repo -o /etc/yum.repos.d/yarn.repo
RUN yum install -y git yarn
RUN groupadd -g 1000 jenkins
RUN useradd -ms /bin/bash -d /var/jenkins_home/ -u 1000 -g jenkins jenkins
