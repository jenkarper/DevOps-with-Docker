FROM ubuntu:20.04

WORKDIR /usr/src/app

COPY build-tool.sh .

RUN apt-get update && apt-get install -y git

CMD ./build-tool.sh