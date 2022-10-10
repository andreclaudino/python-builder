ARG BASE_IMAGE_TAG
FROM python:${BASE_IMAGE_TAG}

LABEL repository="andreclaudino/python-builder"
LABEL version=${BASE_IMAGE_TAG}

RUN apt-get update && \
    apt-get install -y build-essential curl unzip tar && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean autoclean && \
    apt-get autoremove --yes

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install -i /usr/local/aws-cli -b /usr/local/bin
    