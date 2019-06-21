FROM ubuntu:latest
EXPOSE 8080
RUN apt-get update
RUN apt-get install openjdk-8-jdk -y
RUN apt-get install wget -y
RUN apt-get install gnupg -y
RUN wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | apt-key add -
RUN sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
RUN apt-get update
RUN apt-get install jenkins -y
#RUN service jenkins start
