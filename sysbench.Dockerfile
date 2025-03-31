FROM debian
RUN apt-get -y update && \
    apt-get -y install curl && \
    curl -s \
        https://packagecloud.io/install/repositories/akopytov/sysbench/script.deb.sh \
    | bash && \
    apt-get -y install sysbench && \
    apt-get -y remove --purge curl
WORKDIR /usr/share/sysbench
