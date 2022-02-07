
FROM docker:git

# Install Python, AWS CLI and EB CLI
RUN apk add --no-cache \
        gcc \
        cffi \
        curl \
        jq \
        python3 \
        py3-pip \
    && pip3 install --upgrade pip --ignore-installed six \
    && pip3 install --no-cache-dir --ignore-installed six \
        awscli \
        awsebcli \
    && rm -rf /var/cache/apk/*

RUN aws --version   # Just to make sure its installed alright

# Install PHP and Composer
RUN apk --update add wget curl git php php-curl php-openssl php-json php-phar php-dom php-iconv php-mbstring php-simplexml php-gd freetype-dev libpng-dev libjpeg-turbo-dev && rm /var/cache/apk/*
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer 
