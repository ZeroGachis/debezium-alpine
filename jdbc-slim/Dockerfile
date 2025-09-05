FROM smartwayai/debezium-alpine-connect-base:3.2.2.Final

LABEL maintainer="Smartway"

ENV DEBEZIUM_VERSION="3.2.2.Final" \
    MAVEN_REPO_CENTRAL="" \
    MAVEN_REPOS_ADDITIONAL="" \
    JDBC_MD5=64e94a17403a0dd6e8d3796f6f2fbfce

RUN docker-maven-download debezium jdbc "$DEBEZIUM_VERSION" "$JDBC_MD5"
