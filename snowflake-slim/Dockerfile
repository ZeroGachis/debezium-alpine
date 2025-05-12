FROM smartwayai/debezium-alpine-connect-base:3.1.1-Final

LABEL maintainer="Smartway"

ENV SNOWFLAKE_VERSION="3.1.3" \
    MAVEN_REPO_CENTRAL="" \
    MAVEN_REPOS_ADDITIONAL="" \
    SNOWFLAKE_MD5=8a53f5c75c18242e197fa6d3d8dd4adf

RUN docker-maven-download snowflake snowflake-kafka-connector "$SNOWFLAKE_VERSION" "$SNOWFLAKE_MD5"
