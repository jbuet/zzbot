FROM ubuntu

ARG VERSION=0.4.1

RUN apt-get update && apt-get install openjdk-11-jre -yf && mkdir -p /src/app

ADD https://github.com/jagrosh/MusicBot/releases/download/$VERSION/JMusicBot-$VERSION.jar  /src/app/JMusicBot.jar

WORKDIR /src/app

COPY config.txt /src/app/

ENV TOKEN=placeholder

CMD ["sh", "-c", "/usr/bin/env java -Dnogui=true -jar JMusicBot.jar"]