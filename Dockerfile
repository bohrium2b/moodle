FROM ubuntu:20.04

# let container no there is no interactivity :( sad container now lol
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && apt-get upgrade -y

# Standard requirements stuff
RUN apt-get install -y git curl unzip python3 python3-setuptools 
