FROM smartwayai/debezium-alpine-connect-base:3.1.0-Alpha2@sha256:56d38bddac0ea6cd1750561ef3619fd96de24927aa9d0000fd95a9abab7513ac

LABEL maintainer="Smartway"

ENV DEBEZIUM_VERSION="3.1.0.Alpha2" \
    MAVEN_REPO_CENTRAL="" \
    MAVEN_REPOS_ADDITIONAL="" \
    MARIADB_MD5=707058d675788b5b2f014064288921c8

RUN docker-maven-download debezium mariadb "$DEBEZIUM_VERSION" "$MARIADB_MD5"
