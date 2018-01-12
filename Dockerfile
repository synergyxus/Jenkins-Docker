FROM jenkins
USER root
RUN apt-get update \
      && apt-get install -y sudo vim \
      && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y libltdl7 && rm -rf /var/lib/apt/lists/*   
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
EXPOSE 8080
