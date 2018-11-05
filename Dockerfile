
FROM ubuntu:14.04

# Install CURL
RUN apt-get update
RUN apt-get -y install curl

# Install Docker
RUN apt-get install -y apt-transport-https
RUN apt-get install -y software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
RUN sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
RUN sudo apt-get update && sudo apt-get install -y docker-ce

# Install AWS CLI
RUN apt-get -y install python-setuptools
RUN easy_install pip
RUN pip install awscli --upgrade --user