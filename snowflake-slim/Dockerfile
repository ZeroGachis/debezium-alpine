FROM smartwayai/debezium-alpine-connect-base:3.4.3.Final@sha256:d94ff1fe1cd056dd163d0ca272ad857b24b96f027d818fc92c3a4ce16bbdbd0e

LABEL maintainer="Smartway"

ENV SNOWFLAKE_VERSION="3.3.0" \
    MAVEN_REPO_CENTRAL="" \
    MAVEN_REPOS_ADDITIONAL="" \
    SNOWFLAKE_MD5=9231b96dbc7ca68d1bf535fa41859dbb

RUN docker-maven-download snowflake snowflake-kafka-connector "$SNOWFLAKE_VERSION" "$SNOWFLAKE_MD5"

USER kafka
