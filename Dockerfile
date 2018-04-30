FROM ubuntu:16.04

RUN apt update && apt install -y wget && mkdir -p /game

WORKDIR /game

RUN wget http://www.pwnadventure.com/PwnAdventure3Server.tar.gz
