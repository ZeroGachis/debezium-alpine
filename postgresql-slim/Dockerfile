FROM smartwayai/debezium-alpine-connect-base:3.2.6.Final@sha256:248da24976f5a051e50180dc07bb615a301efdfff55b9648642ce072b262229a

LABEL maintainer="Smartway"

ENV MAVEN_REPO_CENTRAL="" \
    MAVEN_REPOS_ADDITIONAL="" \
    POSTGRES_MD5=807bc2af83a3d44bde4a6577ec48c5b8

RUN docker-maven-download debezium postgres "$DEBEZIUM_VERSION" "$POSTGRES_MD5"

USER kafka
