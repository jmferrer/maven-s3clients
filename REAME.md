# Maven with s3 clients

This image covers the use case of maven projects that does not upload their fatjars to an object storage.
It is a must to use [kaniko](https://github.com/GoogleContainerTools/kaniko).

This image is based in maven and contains minio cli and other s3 stuff needed to upload files to [minio](https://min.io/) s3 compatible storage.

The version base of image is maven:3.6.3-jdk-8 because newer java versions does not work for me.
