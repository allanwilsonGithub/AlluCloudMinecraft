FROM ubuntu:18.04

MAINTAINER "Allan Wilson"

LABEL name="Docker build AlluCloudMinecraft"

RUN apt-get update && apt-get install -y git && apt-get install -y wget && apt-get install unzip
RUN apt-get install vim -y
RUN apt-get install -y net-tools
RUN apt install -y openjdk-8-jdk
ARG CACHEBUST=1

RUN mkdir /DATA/
RUN mkdir /DATA/git
RUN chmod 777 /DATA/git
WORKDIR "/DATA/git"
RUN git clone https://github.com/allanwilsonGithub/AllanWilsonMinecraft.git
WORKDIR "/DATA/git/AllanWilsonMinecraft"
RUN chmod 777 start_minecraft_cloud.sh
RUN pwd
RUN ls -lah
RUN ./start_minecraft_cloud.sh
EXPOSE 25565