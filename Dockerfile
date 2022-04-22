FROM ubuntu:18.04

WORKDIR /develop
# ENV FLASK_APP=app.py
# ENV FLASK_RUN_HOST=0.0.0.0
# RUN apk add --no-cache gcc musl-dev linux-headers
# COPY requirements.txt requirements.txt 

# EXPOSE 5000
# COPY . .
# CMD ["flask", "run"]

#############
#   YOCTO   #
#############

# Dependencies 

# RUN apt-get update
RUN apt-get update && apt-get install -y gawk wget git git-core diffstat unzip texinfo gcc-multilib \
    build-essential chrpath socat cpio python python3 python3-pip python3-pexpect \
    xz-utils debianutils iputils-ping libsdl1.2-dev xterm curl

#set default version of python to 3
RUN ln -f -s /usr/bin/python3 /usr/bin/python

#download repo tool
RUN curl https://storage.googleapis.com/git-repo-downloads/repo > /usr/bin/repo
RUN chmod a+x /usr/bin/repo

#Copy your git configuration
COPY files/.gitconfig /root/.gitconfig



