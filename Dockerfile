FROM ubuntu:20.04

# let container no there is no interactivity :( sad container now lol
ENV DEBIAN_FRONTEND noninteractive
# Set utf8 otherwise AHHH!!!!! *screams and runs away*
ENV LANG C.UTF-8
RUN apt-get update && apt-get upgrade -y

# Standard requirements stuff
RUN add-apt-repository ppa:git-core/ppa  && apt-get update && \
    apt-get install -y curl unzip python3 python3-setuptools bash ca-certificates man build-essential

# Install locales
RUN apt-get update && apt-get install -y locales && \
    locale-gen "en_US.UTF-8" && dpkg-reconfigure locales

# Add gcc make clang
RUN apt-get install -y gcc make clang

# Install mysql
RUN apt-get update && apt-get install -y mysql-server mysql-client pwgen

# Add apache php repos
RUN apt-add-repository ppa:ondrej/php && apt-get update && apt-add-repository ppa:ondrej/apache2 && apt-get update && \
    apt-get install php7.4 && apache2 && libapache2-mod-php php-mysql


