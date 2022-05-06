FROM ubuntu:18.04

RUN apt-get update && apt-get install sudo

#############
#   YOCTO   #
#############

# Dependencies 

RUN apt-get update && apt-get install -y gawk wget git git-core diffstat unzip texinfo gcc-multilib \
    build-essential chrpath socat cpio python python3 python3-pip python3-pexpect \
    xz-utils debianutils iputils-ping libsdl1.2-dev xterm curl sudo locales liblz4-tool zstd

#set default version of python to 3
RUN ln -f -s /usr/bin/python3 /usr/bin/python

RUN sudo locale-gen en_US.UTF-8

RUN useradd -md /home/geeking -p $(openssl passwd -1 dev) -G sudo geeking 
USER geeking:geeking
WORKDIR /home/geeking/

ENV LANG=en_US.UTF-8

#Copy your git configuration
# COPY files/.gitconfig /root/.gitconfig



