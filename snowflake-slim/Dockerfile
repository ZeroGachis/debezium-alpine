FROM smartwayai/debezium-alpine-connect-base:3.2.6.Final@sha256:cabdce828bc3ab41b62d481c692fb26c110f4d500a2589cbefddb1731454c5fa

LABEL maintainer="Smartway"

ENV SNOWFLAKE_VERSION="3.3.0" \
    MAVEN_REPO_CENTRAL="" \
    MAVEN_REPOS_ADDITIONAL="" \
    SNOWFLAKE_MD5=9231b96dbc7ca68d1bf535fa41859dbb

RUN docker-maven-download snowflake snowflake-kafka-connector "$SNOWFLAKE_VERSION" "$SNOWFLAKE_MD5"

USER kafka
