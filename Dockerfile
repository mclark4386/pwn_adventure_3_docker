FROM ubuntu:16.04

EXPOSE 5432

RUN apt update && apt install -y wget postgresql git && mkdir -p /opt/pwn3 

WORKDIR /opt/pwn3

RUN wget http://www.pwnadventure.com/PwnAdventure3Server.tar.gz && tar -zxf PwnAdventure3Server.tar.gz

RUN useradd -ms /bin/bash pwn3
