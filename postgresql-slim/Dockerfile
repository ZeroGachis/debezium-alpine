FROM smartwayai/debezium-alpine-connect-base:3.1.0-Alpha2@sha256:56d38bddac0ea6cd1750561ef3619fd96de24927aa9d0000fd95a9abab7513ac

LABEL maintainer="Smartway"

ENV DEBEZIUM_VERSION="3.1.0.Alpha2" \
    MAVEN_REPO_CENTRAL="" \
    MAVEN_REPOS_ADDITIONAL="" \
    POSTGRES_MD5=bb9cb8bcd345eb9c54ed5aa6b008b9a4

RUN docker-maven-download debezium postgres "$DEBEZIUM_VERSION" "$POSTGRES_MD5"
