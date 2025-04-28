FROM smartwayai/debezium-alpine-connect-base:3.1.0-Alpha2@sha256:743cf1fcc3e6b25409ec2d8588b21af19bb9b9cb2fc98ce522d6d08f6c8cc0b2

LABEL maintainer="Smartway"

ENV SNOWFLAKE_VERSION="3.1.1" \
    MAVEN_REPO_CENTRAL="" \
    MAVEN_REPOS_ADDITIONAL="" \
    SNOWFLAKE_MD5=8a53f5c75c18242e197fa6d3d8dd4adf

RUN docker-maven-download snowflake snowflake-kafka-connector "$SNOWFLAKE_VERSION" "$SNOWFLAKE_MD5"
