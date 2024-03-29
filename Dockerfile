FROM node:10-buster

RUN wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.asc.gpg \
 && mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/ \
 && wget -q https://packages.microsoft.com/config/debian/9/prod.list \
 && mv prod.list /etc/apt/sources.list.d/microsoft-prod.list \
 && chown root:root /etc/apt/trusted.gpg.d/microsoft.asc.gpg \
 && chown root:root /etc/apt/sources.list.d/microsoft-prod.list \
 && apt-get update -y \
 && apt-get install -y azure-functions-core-tools \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN mkdir /code
WORKDIR /code