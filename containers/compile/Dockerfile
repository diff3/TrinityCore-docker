FROM debian:latest
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -y install tzdata git clang cmake make gcc g++ libmariadb-dev libssl-dev libbz2-dev libreadline-dev libncurses-dev libboost-all-dev mariadb-server p7zip default-libmysqlclient-dev

RUN update-alternatives --install /usr/bin/cc cc /usr/bin/clang 100
RUN update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang 100

WORKDIR /opt/TrinityCore

COPY --chmod=755 entry.sh / 

ENTRYPOINT ["/entry.sh"]
