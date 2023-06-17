# Container image that runs your code
FROM ubuntu:kinetic

RUN apt-get update && apt-get install -y curl  \
    && curl --location -O https://pkg.contrastsecurity.com/artifactory/cli/1.0.18/linux/contrast \
    && chmod +x contrast && mv contrast /usr/bin

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

