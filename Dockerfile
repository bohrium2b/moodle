FROM ubuntu:20.04

# let container no there is no interactivity :( sad container now lol
ENV DEBIAN_FRONTEND noninteractive
# Set utf8 otherwise AHHH!!!!! *screams and runs away*
ENV LANG C.UTF-8
RUN apt-get update -y && apt-get upgrade -y

# Standard requirements stuff
RUN apt-get install -y git curl unzip python3 python3-setuptools 
