FROM smartwayai/debezium-alpine-connect-base:3.1.0-Alpha2@sha256:743cf1fcc3e6b25409ec2d8588b21af19bb9b9cb2fc98ce522d6d08f6c8cc0b2

LABEL maintainer="Smartway"

ENV DEBEZIUM_VERSION="3.1.0.Alpha2" \
    MAVEN_REPO_CENTRAL="" \
    MAVEN_REPOS_ADDITIONAL="" \
    POSTGRES_MD5=bb9cb8bcd345eb9c54ed5aa6b008b9a4

RUN docker-maven-download debezium postgres "$DEBEZIUM_VERSION" "$POSTGRES_MD5"
