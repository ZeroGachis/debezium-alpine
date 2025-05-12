FROM smartwayai/debezium-alpine-connect-base:3.1.1-Final

LABEL maintainer="Smartway"

ENV DEBEZIUM_VERSION="3.1.1.Final" \
    MAVEN_REPO_CENTRAL="" \
    MAVEN_REPOS_ADDITIONAL="" \
    MARIADB_MD5=707058d675788b5b2f014064288921c8

RUN docker-maven-download debezium mariadb "$DEBEZIUM_VERSION" "$MARIADB_MD5"
