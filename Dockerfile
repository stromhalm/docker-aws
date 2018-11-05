
FROM ubuntu:14.04

# Install CURL, Python, AWS CLI and EB CLI
RUN apt-get update
RUN apt-get -y install curl
RUN apt-get update && \
    apt-get install -y \
        python \
        python-dev \
        python-pip \
        python-setuptools \
        groff \
        less \
    && pip install --upgrade awscli \
    && pip install --upgrade awsebcli \
    && apt-get clean

# Install Docker
RUN apt-get install -y apt-transport-https
RUN apt-get install -y software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
RUN sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
RUN sudo apt-get update && sudo apt-get install -y docker-ce
