FROM smartwayai/debezium-alpine-connect-base:3.1.0-Alpha2@sha256:56d38bddac0ea6cd1750561ef3619fd96de24927aa9d0000fd95a9abab7513ac

LABEL maintainer="Smartway"

ENV SNOWFLAKE_VERSION="3.1.1" \
    MAVEN_REPO_CENTRAL="" \
    MAVEN_REPOS_ADDITIONAL="" \
    SNOWFLAKE_MD5=8a53f5c75c18242e197fa6d3d8dd4adf

RUN docker-maven-download snowflake snowflake-kafka-connector "$SNOWFLAKE_VERSION" "$SNOWFLAKE_MD5"
