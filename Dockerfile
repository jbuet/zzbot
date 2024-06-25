FROM ubuntu:24.04

RUN apt-get update && apt-get install openjdk-11-jre -yf && mkdir -p /src/app

ADD https://github.com/jagrosh/MusicBot/releases/download/0.4.1/JMusicBot-0.4.1.jar  /src/app/JMusicBot.jar

WORKDIR /src/app

COPY config.txt /src/app/

ENV TOKEN=placeholder

CMD ["sh", "-c", "/usr/bin/env java -Dnogui=true -jar JMusicBot.jar"]