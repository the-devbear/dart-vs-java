FROM debian:bookworm

RUN apt-get update && apt-get -y install git curl unzip

RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

ENV JAVA_URL=https://download.oracle.com/java/21/latest \
JAVA_HOME=/usr/java/jdk-21

RUN mkdir /home/codespace
WORKDIR /home/codespace

ENV PUB_CACHE=/home/codespace/.pub_cache
ENV PATH="/home/codespace/flutter/bin:$PATH"

RUN git clone https://github.com/flutter/flutter && \
    /home/codespace/flutter/bin/flutter config --enable-web

RUN curl https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.deb --output file.deb && apt install ./file.deb && rm ./file.deb