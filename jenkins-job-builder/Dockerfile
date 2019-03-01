FROM fedora
RUN yum -y install python3-jenkins-job-builder vim-enhanced
RUN mkdir -p /etc/jenkins_job/
ADD jenkins_jobs.ini /root/.config/jenkins_jobs/jenkins_jobs.ini
RUN echo 'alias jbb=jenkins-jobs' >> ~/.bashrc
