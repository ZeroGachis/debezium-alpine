FROM smartwayai/debezium-alpine-connect-base:3.4.3.Final

LABEL maintainer="Smartway"

ENV MAVEN_REPO_CENTRAL="" \
    MAVEN_REPOS_ADDITIONAL="" \
    POSTGRES_MD5=7752d2629c5aee9d24b95be60b1eb529

RUN docker-maven-download debezium postgres "$DEBEZIUM_VERSION" "$POSTGRES_MD5"

USER kafka
