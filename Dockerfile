FROM ubuntu:20.04

# let container no there is no interactivity :( sad container now lol
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && apt-get upgrade -y
