
FROM docker:git

# Install Python, AWS CLI and EB CLI
RUN apk add --no-cache curl jq python3 py-pip
RUN pip install awscli
RUN pip install awsebcli
