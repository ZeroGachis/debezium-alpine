FROM smartwayai/debezium-alpine-connect-base:3.2.6.Final@sha256:248da24976f5a051e50180dc07bb615a301efdfff55b9648642ce072b262229a

LABEL maintainer="Smartway"

ENV SNOWFLAKE_VERSION="3.3.0" \
    MAVEN_REPO_CENTRAL="" \
    MAVEN_REPOS_ADDITIONAL="" \
    SNOWFLAKE_MD5=9231b96dbc7ca68d1bf535fa41859dbb

RUN docker-maven-download snowflake snowflake-kafka-connector "$SNOWFLAKE_VERSION" "$SNOWFLAKE_MD5"

USER kafka
