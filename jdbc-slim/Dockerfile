FROM smartwayai/debezium-alpine-connect-base:3.2.6.Final@sha256:248da24976f5a051e50180dc07bb615a301efdfff55b9648642ce072b262229a

LABEL maintainer="Smartway"

ENV MAVEN_REPO_CENTRAL="" \
    MAVEN_REPOS_ADDITIONAL="" \
    JDBC_MD5=02a3b4ecc4afa42758b5285ed5f659f0

RUN docker-maven-download debezium jdbc "$DEBEZIUM_VERSION" "$JDBC_MD5"

USER kafka
