FROM ubuntu:latest

ENV TZ=Europe/Brussels
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update && apt install -y \
    sudo \
    git \
    && apt clean
RUN sudo apt install -y software-properties-common
RUN sudo add-apt-repository --yes --update ppa:ansible/ansible
RUN sudo apt install -y ansible

RUN useradd -ms /bin/bash stijn && echo "stijn:stijn" | chpasswd && adduser stijn sudo

USER stijn
WORKDIR /home/stijn
