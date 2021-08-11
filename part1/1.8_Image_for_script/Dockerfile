FROM ubuntu:18.04

WORKDIR /usr/src/app

COPY curler-script.sh .

RUN chmod +x curler-script.sh && apt-get update && apt-get install -y curl

CMD ./curler-script.sh