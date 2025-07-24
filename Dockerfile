FROM ubuntu:latest

ENV TZ='Europe/Prague' \
    DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install texlive-full make fonts-ebgaramond -qy

CMD exec /bin/bash -c "trap : TERM INT; sleep infinity & wait"