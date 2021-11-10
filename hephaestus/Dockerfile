FROM jenkins/jenkins:2.289.2-lts-centos
ARG jenkins_home=/var/jenkins_home

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false -Djavax.net.ssl.trustStore=$jenkins_home/cacerts
ENV JENKINS_ARGS="--prefix=/jenkins"
ENV JENKINS_OPTS="--prefix=/jenkins"
ENV CASC_JENKINS_CONFIG /casc.yaml
COPY set-plugins-list.txt $jenkins_home/set-plugins-list.txt
COPY 
RUN /usr/local/bin/install-plugins.sh < $jenkins_home/set-plugins-list.txt
COPY casc.yaml /casc.yaml
