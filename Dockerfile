FROM maven:3.6.3-jdk-8

## Install s3 cli to send artifacts to s3 and sync .m2 directory before and after a build

# Install aws cli
RUN apt-get update; \
    apt-get -y install python3-pip; \
    apt-get -y install groff; \
    apt-get clean

RUN pip3 install awscli

# Install minio cli to use an s3 block storage deployable in on-premise kubernetes clusters and Azure Blob with S3 API
# Take a look to https://azuremarketplace.microsoft.com/en-us/marketplace/apps/minio.minioblob?tab=Overview
# Useful to use kaniko on-prem: https://github.com/GoogleContainerTools/kaniko
RUN curl https://dl.min.io/client/mc/release/linux-amd64/mc -o /usr/local/bin/mc && \
    chmod +x /usr/local/bin/mc
