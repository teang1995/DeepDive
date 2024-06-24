FROM ubuntu:22.04

# Python 3.11.7 설치
RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN DEBIAN_FRONTEND=noninteractive TZ=Asia/Seoul apt-get -y install tzdata
RUN apt-get install -y python3.11 python3.11-dev

# 타임존 설정


# Python 3.11.7 사용
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 1
RUN update-alternatives --config python3
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.11 1
