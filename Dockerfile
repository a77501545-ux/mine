FROM ubuntu:22.04
RUN apt-get update && apt-get install -y wget tar ca-certificates
RUN wget https://github.com/xmrig/xmrig/releases/download/v6.21.3/xmrig-6.21.3-linux-static-x64.tar.gz \
    && tar xf xmrig-6.21.3-linux-static-x64.tar.gz \
    && mv xmrig-6.21.3/xmrig /usr/local/bin/xmrig \
    && rm -rf xmrig-6.21.3*
COPY config.json /config.json
CMD ["xmrig", "--config=/config.json"]
