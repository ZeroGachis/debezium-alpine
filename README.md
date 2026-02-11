# debezium-alpine

Lightweight [Debezium](https://debezium.io/) Docker images based on Alpine Linux, maintained by [Smartway](https://www.smartway.ai/).

## Architecture

The images follow a layered dependency chain:

```text
alpine:3.23
  └── debezium-alpine-base          (Kafka + JRE)
        └── debezium-alpine-connect-base   (Kafka Connect runtime)
              ├── debezium-postgresql-slim
              ├── debezium-mariadb-slim
              ├── debezium-jdbc-slim
              └── debezium-snowflake-slim
```

## Images

| Image | Description | Base |
|-------|-------------|------|
| `smartwayai/debezium-alpine-base` | Alpine + OpenJDK 21 JRE + Apache Kafka | `alpine:3.23` |
| `smartwayai/debezium-alpine-connect-base` | Kafka Connect runtime with optional OTEL, Apicurio & Jolokia support | `debezium-alpine-base` |
| `smartwayai/debezium-postgresql-slim` | Debezium PostgreSQL connector | `debezium-alpine-connect-base` |
| `smartwayai/debezium-mariadb-slim` | Debezium MariaDB connector | `debezium-alpine-connect-base` |
| `smartwayai/debezium-jdbc-slim` | Debezium JDBC sink connector | `debezium-alpine-connect-base` |
| `smartwayai/debezium-snowflake-slim` | Snowflake Kafka connector | `debezium-alpine-connect-base` |

## Project structure

```text
.
├── base/                # Base image (Alpine + Kafka + JRE)
├── connect-base/        # Kafka Connect runtime image
├── postgresql-slim/     # PostgreSQL connector image
├── mariadb-slim/        # MariaDB connector image
├── jdbc-slim/           # JDBC sink connector image
├── snowflake-slim/      # Snowflake connector image
└── .github/workflows/
    ├── base.yml           # Build & release base image
    ├── connect-base.yml   # Build & release connect-base image
    ├── final-images.yml   # Build & release connector images
    └── release.yml        # GitHub release via release-please
```

## How to upgrade Debezium version

The Debezium version is centralized as `ENV DEBEZIUM_VERSION` in the base image and inherited by all child images. To upgrade, follow these steps **in order** (each step should be its own PR, merged before the next):

### 1. Update the base image

In `base/Dockerfile`, update the version:

```dockerfile
ENV DEBEZIUM_VERSION=<new_version>
```

### 2. Update the connect-base image

In `connect-base/Dockerfile`, update the `FROM` tag:

```dockerfile
FROM smartwayai/debezium-alpine-base:<new_version>
```

### 3. Update the connector images

In each `*-slim/Dockerfile`, update the `FROM` tag and the connector MD5 checksum:

```dockerfile
FROM smartwayai/debezium-alpine-connect-base:<new_version>
```

For Debezium connectors (postgresql, mariadb, jdbc), also update the MD5:

```dockerfile
ENV POSTGRES_MD5=<new_md5>
```

> **Why this order?** Each image is built and released to DockerHub on merge to `main`. Since child images reference their parent by tag, the parent must be published first.

## Usage

```bash
# Pull a connector image
docker pull smartwayai/debezium-postgresql-slim:3.2.2.Final

# Run Kafka Connect
docker run -d \
  -p 8083:8083 \
  -e BOOTSTRAP_SERVERS=kafka:9092 \
  -e GROUP_ID=connect-cluster \
  -e CONFIG_STORAGE_TOPIC=connect-configs \
  -e OFFSET_STORAGE_TOPIC=connect-offsets \
  -e STATUS_STORAGE_TOPIC=connect-status \
  smartwayai/debezium-postgresql-slim:3.2.2.Final
```

### Connect-base build args

The connect-base image supports optional features via build arguments:

| Arg | Default | Description |
|-----|---------|-------------|
| `OTEL_ENABLED` | `no` | OpenTelemetry instrumentation |
| `APICURIO_ENABLED` | `no` | Apicurio Schema Registry support |
| `JOLOKIA_ENABLED` | `no` | Jolokia JMX-over-HTTP agent |

```bash
docker build \
  --build-arg OTEL_ENABLED=yes \
  --build-arg APICURIO_ENABLED=yes \
  -t my-connect-base-full \
  connect-base/
```

### Volumes

| Path | Description |
|------|-------------|
| `/kafka/data` | Kafka data directory |
| `/kafka/logs` | Kafka logs |
| `/kafka/config` | Configuration files (overrides defaults) |

## Dependency management

- **OS packages** — Pinned versions, updated via [Renovate](https://docs.renovatebot.com/) (`renovate.json`)
- **Pre-commit hooks** — Configured in `.pre-commit-config.yaml`

## License

[MIT](LICENSE) — Copyright (c) 2016-2025 Debezium Authors