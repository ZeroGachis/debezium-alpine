FROM smartwayai/debezium-alpine-connect-base:3.1.0-Alpha2@sha256:3ab00142644fd34ce56a61a309929c2d10a3584510c8394e42e47278607a6b10

LABEL maintainer="Smartway"

ENV DEBEZIUM_VERSION="3.1.0.Alpha2" \
    MAVEN_REPO_CENTRAL="" \
    MAVEN_REPOS_ADDITIONAL="" \
    MARIADB_MD5=707058d675788b5b2f014064288921c8

RUN docker-maven-download debezium mariadb "$DEBEZIUM_VERSION" "$MARIADB_MD5"
