# Changelog

## [3.8.0](https://github.com/ZeroGachis/debezium-alpine/compare/v3.7.0...v3.8.0) (2026-02-11)


### Features

* upgrade connect-base to debezium-alpine-base 3.2.6.Final ([798ec23](https://github.com/ZeroGachis/debezium-alpine/commit/798ec23e37254b1b79ad72b052e6ce205b680d44))
* upgrade connector images to connect-base 3.2.6.Final ([e756a3b](https://github.com/ZeroGachis/debezium-alpine/commit/e756a3bc75de4f471b1846aacf2a8e223bbce26d))
* upgrade Debezium version to 3.2.6.Final ([49996d6](https://github.com/ZeroGachis/debezium-alpine/commit/49996d6f2eae38d31837ef243c64eaabd44ada67))


### Bug Fixes

* ensure connector images run as non-root kafka user ([9dfb020](https://github.com/ZeroGachis/debezium-alpine/commit/9dfb020cc8c6b510ce90453a3d93462c0050243b))

## [3.7.0](https://github.com/ZeroGachis/debezium-alpine/compare/v3.6.3...v3.7.0) (2026-02-11)


### Features

* centralize DEBEZIUM_VERSION in base Dockerfile ([860c9a0](https://github.com/ZeroGachis/debezium-alpine/commit/860c9a07356a4df2565cdc41e811495a9c44b89b))
* upgrade alpine base version to 3.23 ([446601e](https://github.com/ZeroGachis/debezium-alpine/commit/446601e770c4b8c96fda0ad29e790665a5d1eb87))


### Bug Fixes

* removed useless build-push workflow ([a67ca39](https://github.com/ZeroGachis/debezium-alpine/commit/a67ca399b01daa9c68fe425b6ef1d2dbffa9fd32))


### Documentation

* improve README with architecture, usage and upgrade guide ([797fa30](https://github.com/ZeroGachis/debezium-alpine/commit/797fa3082986901b88b772ef0cde334054847b12))


### Miscellaneous Chores

* upgrade packages versions ([5bd1dc5](https://github.com/ZeroGachis/debezium-alpine/commit/5bd1dc53257e975aa204ca2800b0c757f4aaf6b2))


### Continuous Integration

* add per-image release on push to main ([fa08e7f](https://github.com/ZeroGachis/debezium-alpine/commit/fa08e7f9898d6709b5957d1262dda20d53fe269e))
* improved the workflows to handle distinctively the build of our images ([31a7f05](https://github.com/ZeroGachis/debezium-alpine/commit/31a7f0566404c68df290de5f541df8b2ee6d9b94))

## [3.6.3](https://github.com/ZeroGachis/debezium-alpine/compare/v3.6.2...v3.6.3) (2026-02-09)


### Miscellaneous Chores

* **deps:** update alpine:3.22 docker digest to 4b7ce07 ([#92](https://github.com/ZeroGachis/debezium-alpine/issues/92)) ([9717484](https://github.com/ZeroGachis/debezium-alpine/commit/971748454ec457cfad02b1ad6621bf52f85cdf81))
* **deps:** update dependency alpine_3_22/curl to v8.14.1-r2 ([#90](https://github.com/ZeroGachis/debezium-alpine/issues/90)) ([5517926](https://github.com/ZeroGachis/debezium-alpine/commit/5517926fcb8099e78a47efa929e6866985c0fec9))
* **deps:** update dependency alpine_3_22/openjdk21-jre-headless to v21.0.9_p10-r0 ([#93](https://github.com/ZeroGachis/debezium-alpine/issues/93)) ([ab0d917](https://github.com/ZeroGachis/debezium-alpine/commit/ab0d917be20a68bdd013dd502b0365fcd0e683cb))
* **deps:** update zerogachis/.github action to v5 ([1e6139c](https://github.com/ZeroGachis/debezium-alpine/commit/1e6139cb0777088bd2b209dc87bfc65b9450b23a))
* **deps:** update zerogachis/.github action to v5 ([1ce7a54](https://github.com/ZeroGachis/debezium-alpine/commit/1ce7a54c991356e96e530cbbca25153123d7c8c0))

## [3.6.2](https://github.com/ZeroGachis/debezium-alpine/compare/v3.6.1...v3.6.2) (2025-09-05)


### Miscellaneous Chores

* **deps:** update MD5 checksums for JDBC, MariaDB, and PostgreSQL Dockerfiles ([3d471ce](https://github.com/ZeroGachis/debezium-alpine/commit/3d471cea04b9bb3e86b764b94813a7c64f1c7de2))

## [3.6.1](https://github.com/ZeroGachis/debezium-alpine/compare/v3.6.0...v3.6.1) (2025-09-05)


### Miscellaneous Chores

* release 3.6.1 ([f7efae2](https://github.com/ZeroGachis/debezium-alpine/commit/f7efae297a0e8ca06f3fee858ee5e699c889a03e))

## [3.6.0](https://github.com/ZeroGachis/debezium-alpine/compare/v3.5.4...v3.6.0) (2025-09-05)


### Features

* add security scan workflow ([0a8ac7c](https://github.com/ZeroGachis/debezium-alpine/commit/0a8ac7cd2a496ee9796334974abbd90c500aa97c))


### Miscellaneous Chores

* **deps:** update alpine base image and package versions to 3.22 ([a90aecf](https://github.com/ZeroGachis/debezium-alpine/commit/a90aecfc9ff25e8300d3c5d80d4aa6defa0e3db8))
* **deps:** update dependency alpine_3_21/openjdk21-jre-headless to v21.0.8_p9-r0 ([#85](https://github.com/ZeroGachis/debezium-alpine/issues/85)) ([eaca37f](https://github.com/ZeroGachis/debezium-alpine/commit/eaca37fa96b638d46be62c9b5d7380ca9e2e1f9b))
* **deps:** update Docker images to version 3.2.2.Final ([749c77e](https://github.com/ZeroGachis/debezium-alpine/commit/749c77eb6607c8984ee6aa6c047cf8b6e3fa9e73))
* **deps:** update Kafka version to 4.1.0 ([e1242f0](https://github.com/ZeroGachis/debezium-alpine/commit/e1242f0fbc6034ffa8e3ba414d69fd6791ec30d2))
* **deps:** update MD5 checksums for JDBC, MariaDB, and PostgreSQL Dockerfiles ([bcd4013](https://github.com/ZeroGachis/debezium-alpine/commit/bcd4013f2285d9f2f0ce281ba2c77427e0e3de4f))
* **deps:** update smartwayai/debezium-alpine-base:3.1.0-alpha2 docker digest to 3fc056b ([#80](https://github.com/ZeroGachis/debezium-alpine/issues/80)) ([431332f](https://github.com/ZeroGachis/debezium-alpine/commit/431332f4d73e12d4e2c8b142f1f3fea54dc21742))
* **deps:** update Snowflake version to 3.3.0 and corresponding MD5 checksum ([0591877](https://github.com/ZeroGachis/debezium-alpine/commit/05918775f29456a56a48ccec66d6328d9aaa607a))
* **log4j:** update logging pattern for stdout and file appender to structured JSON format ([b81b709](https://github.com/ZeroGachis/debezium-alpine/commit/b81b70927b1cba83020f100a540fd24517247907))

## [3.5.4](https://github.com/ZeroGachis/debezium-alpine/compare/v3.5.3...v3.5.4) (2025-04-28)


### Miscellaneous Chores

* **deps:** update smartwayai/debezium-alpine-base:3.1.0-alpha2 docker digest to f013a36 ([#76](https://github.com/ZeroGachis/debezium-alpine/issues/76)) ([8bba3ab](https://github.com/ZeroGachis/debezium-alpine/commit/8bba3ab5fb67078ec37210485d885158a595f1b1))
* **deps:** update smartwayai/debezium-alpine-connect-base:3.1.0-alpha2 docker digest to 743cf1f ([#77](https://github.com/ZeroGachis/debezium-alpine/issues/77)) ([49c023c](https://github.com/ZeroGachis/debezium-alpine/commit/49c023c66c7aef52c37f131a0b593e70592b00ac))

## [3.5.3](https://github.com/ZeroGachis/debezium-alpine/compare/v3.5.2...v3.5.3) (2025-04-25)


### Miscellaneous Chores

* **deps:** update dependency alpine_3_21/openjdk21-jre-headless to v21.0.7_p6-r0 ([5cb6d13](https://github.com/ZeroGachis/debezium-alpine/commit/5cb6d1366d30ced1cd5c0a444967ffe7e42f6531))
* **deps:** update dependency alpine_3_21/openjdk21-jre-headless to v21.0.7_p6-r0 ([33a204c](https://github.com/ZeroGachis/debezium-alpine/commit/33a204c07b46e26d2533f9c57e284ec29ea93c2d))
* **deps:** update smartwayai/debezium-alpine-base:3.1.0-alpha2 docker digest to aa33d47 ([#71](https://github.com/ZeroGachis/debezium-alpine/issues/71)) ([4aaa9c6](https://github.com/ZeroGachis/debezium-alpine/commit/4aaa9c6cf3ecaa871fe7c6b2e0b1eb2ba168174f))
* **deps:** update smartwayai/debezium-alpine-connect-base:3.1.0-alpha2 docker digest to 3ab0014 ([#72](https://github.com/ZeroGachis/debezium-alpine/issues/72)) ([fbd7b01](https://github.com/ZeroGachis/debezium-alpine/commit/fbd7b016e9fa711e47a21b55214fcd7194886165))

## [3.5.2](https://github.com/ZeroGachis/debezium-alpine/compare/v3.5.1...v3.5.2) (2025-04-07)


### Miscellaneous Chores

* **deps:** pin dependencies ([dddeb7a](https://github.com/ZeroGachis/debezium-alpine/commit/dddeb7aeeb22c34a7d1c44671760c4494d9aadb1))
* **deps:** pin dependencies ([3f2c89f](https://github.com/ZeroGachis/debezium-alpine/commit/3f2c89f4ab8a3033fcb85defb698a70aed7e9fea))

## [3.5.1](https://github.com/ZeroGachis/debezium-alpine/compare/v3.5.0...v3.5.1) (2025-03-18)


### Bug Fixes

* error on ci ([57f3eff](https://github.com/ZeroGachis/debezium-alpine/commit/57f3eff3181b686591e1b356dc6f055e78d68afa))


### Miscellaneous Chores

* add missing perm on release ([e1fb5a0](https://github.com/ZeroGachis/debezium-alpine/commit/e1fb5a00e943e7b8ee207ee4b55175e6986dcf00))
* add renovate config file ([26add89](https://github.com/ZeroGachis/debezium-alpine/commit/26add8947b361670fb20b4597b40eab4b87c8d34))
* set up renovate on Alpine packages ([4c8befd](https://github.com/ZeroGachis/debezium-alpine/commit/4c8befddd9c84c2bede739317b0b72df89dfa60d))
* set up renovate on Alpine packages ([29d42f4](https://github.com/ZeroGachis/debezium-alpine/commit/29d42f49b71ec9cefd5ecde20cc984d8dc407ddb))
* upgrade curl ([4e4ef60](https://github.com/ZeroGachis/debezium-alpine/commit/4e4ef6019a9861c632d559301b2075b647697e53))


### Continuous Integration

* add trivy scanner ([fce4561](https://github.com/ZeroGachis/debezium-alpine/commit/fce4561871df037ab94e60407ba3c6de98719ff1))
* add trivy scanner ([a3a0759](https://github.com/ZeroGachis/debezium-alpine/commit/a3a075978113f5bbc2062bcaca2657aa2c4af626))

## [3.5.0](https://github.com/ZeroGachis/debezium-alpine/compare/v3.4.2...v3.5.0) (2025-03-14)


### Features

* add renovate on the repo ([cf04b3c](https://github.com/ZeroGachis/debezium-alpine/commit/cf04b3c427b0898eaa79391fe40bfdb23ea79187))


### Miscellaneous Chores

* add todo actions to be grep later ([fde4a58](https://github.com/ZeroGachis/debezium-alpine/commit/fde4a58f9f84c02f2ecbdd944c8bdfa11f611f7f))
* upgrade alpine version ([955d9bc](https://github.com/ZeroGachis/debezium-alpine/commit/955d9bccafd692d7feaf67109fcd9cf16c12b54a))


### Continuous Integration

* set v4 of build action ([03a99c1](https://github.com/ZeroGachis/debezium-alpine/commit/03a99c10a9fd84284fb8648d575bd9c49d15bafa))
* try new version of build action ([de3e011](https://github.com/ZeroGachis/debezium-alpine/commit/de3e01136246c859e8d86a57ed18c69a1540999f))

## [3.4.2](https://github.com/ZeroGachis/debezium-alpine/compare/v3.4.1...v3.4.2) (2025-03-14)


### Miscellaneous Chores

* Create scorecard.yml ([8608698](https://github.com/ZeroGachis/debezium-alpine/commit/860869859a0ed3115b1822b3b97bcb88042d4803))
* Create scorecard.yml ([96a84d6](https://github.com/ZeroGachis/debezium-alpine/commit/96a84d6cfcad815f907de83bf74d7787ef4a2b6f))
* remove scorecard ([82a571b](https://github.com/ZeroGachis/debezium-alpine/commit/82a571b489a0274a2c9528fc7f5b826c93d9e60e))
* remove scorecard ([c0dcc79](https://github.com/ZeroGachis/debezium-alpine/commit/c0dcc790ccd54e1f59ad859b3eb544f9b356431c))


### Continuous Integration

* define the upload in the inherited action ([86ac332](https://github.com/ZeroGachis/debezium-alpine/commit/86ac3322edf778034fe7053603b66bedb101a431))
* upload security result ([ba10f04](https://github.com/ZeroGachis/debezium-alpine/commit/ba10f0462905d6e94a6d782b90caa4f0e4090eb9))
* upload security result ([40884d0](https://github.com/ZeroGachis/debezium-alpine/commit/40884d0f8f5428631ee8e8d4712d2d11638a1864))

## [3.4.1](https://github.com/ZeroGachis/debezium-alpine/compare/v3.4.0...v3.4.1) (2025-03-08)


### Bug Fixes

* Upgrade netty-* to 4.1.119 to fix CVE ([16eb9ae](https://github.com/ZeroGachis/debezium-alpine/commit/16eb9ae01aba653149579dd90d02f9fdb46ce980))
* Upgrade netty-* to 4.1.119 to fix CVE ([9781b8b](https://github.com/ZeroGachis/debezium-alpine/commit/9781b8bd7bf5e99fb8b485dec4e28170d43c4767))

## [3.4.0](https://github.com/ZeroGachis/debezium-alpine/compare/v3.3.8...v3.4.0) (2025-03-07)


### Features

* Add MariaDB ([a1ce2ef](https://github.com/ZeroGachis/debezium-alpine/commit/a1ce2ef03a14d40b6350bafb7b0b04127cd930ad))
* Add MariaDB ([a7cb90f](https://github.com/ZeroGachis/debezium-alpine/commit/a7cb90fc2c40628e7127976276e952b80d248d94))


### Bug Fixes

* wrong command ([9c16db5](https://github.com/ZeroGachis/debezium-alpine/commit/9c16db52f70f6ac580be030319e8d3e62c820a8f))

## [3.3.8](https://github.com/ZeroGachis/debezium-alpine/compare/v3.3.7...v3.3.8) (2025-03-07)


### Bug Fixes

* jar files does not need uncompress ([70f601d](https://github.com/ZeroGachis/debezium-alpine/commit/70f601d954e986f872c9ed0de9b1f57b27a53989))
* jar files does not need uncompress ([6bf89a6](https://github.com/ZeroGachis/debezium-alpine/commit/6bf89a6632cc002cc05320a417cc8e2cd18e1245))


### Continuous Integration

* add missing latest tag ([43c72de](https://github.com/ZeroGachis/debezium-alpine/commit/43c72de424e7a53bebd31c81c86d551bf2b8a830))
* add missing latest tag ([5e4eb7f](https://github.com/ZeroGachis/debezium-alpine/commit/5e4eb7f1fc100043e4fc3d8737c84f504f27995e))

## [3.3.7](https://github.com/ZeroGachis/debezium-alpine/compare/v3.3.6...v3.3.7) (2025-03-07)


### Bug Fixes

* set verison number the hardway ([e276001](https://github.com/ZeroGachis/debezium-alpine/commit/e2760018f934d4474c943ac7ee7171d0b1692671))
* set version number the hardway ([27fa615](https://github.com/ZeroGachis/debezium-alpine/commit/27fa615f74f78a2af1b9136b9f85df380ecf6f1f))


### Continuous Integration

* make jobs dependent ([c42640c](https://github.com/ZeroGachis/debezium-alpine/commit/c42640c59d0bc75a1034f5f924c5f53376b16c92))

## [3.3.6](https://github.com/ZeroGachis/debezium-alpine/compare/v3.3.5...v3.3.6) (2025-03-07)


### Continuous Integration

* fix var name ([43036c3](https://github.com/ZeroGachis/debezium-alpine/commit/43036c3e9a26a514cadb0f8e4ad1e49cd84922d4))
* fix var name ([32eadc1](https://github.com/ZeroGachis/debezium-alpine/commit/32eadc1ad2a425b859976b81519378a25d076bfc))

## [3.3.5](https://github.com/ZeroGachis/debezium-alpine/compare/v3.3.4...v3.3.5) (2025-03-07)


### Continuous Integration

* fix var name ([31182ce](https://github.com/ZeroGachis/debezium-alpine/commit/31182cee4d45a7f2ade13242345fc59cefc25fab))
* fix var name ([17ba904](https://github.com/ZeroGachis/debezium-alpine/commit/17ba9044b467abe826747f067a1d829778364190))

## [3.3.4](https://github.com/ZeroGachis/debezium-alpine/compare/v3.3.3...v3.3.4) (2025-03-07)


### Continuous Integration

* fix var name ([d3f9e21](https://github.com/ZeroGachis/debezium-alpine/commit/d3f9e215f568f727ecc3a1c24eda2ec52012c1ff))
* set right debezium version number ([8d867b6](https://github.com/ZeroGachis/debezium-alpine/commit/8d867b6118bcb44ad3ec87ce2d88cee32f4ae8f9))
* set right debezium version number ([d21eeb2](https://github.com/ZeroGachis/debezium-alpine/commit/d21eeb299e555777fbfb8d9ce11172a5ed04a90a))

## [3.3.3](https://github.com/ZeroGachis/debezium-alpine/compare/v3.3.2...v3.3.3) (2025-03-07)


### Continuous Integration

* use simple version number ([241925d](https://github.com/ZeroGachis/debezium-alpine/commit/241925de655126683269bade9fecfa53a50f04e5))
* use simple version number ([2cdd378](https://github.com/ZeroGachis/debezium-alpine/commit/2cdd378815707977ecf5e492d8900c126120336a))

## [3.3.2](https://github.com/ZeroGachis/debezium-alpine/compare/v3.3.1...v3.3.2) (2025-03-07)


### Continuous Integration

* add snowflake ([fe41484](https://github.com/ZeroGachis/debezium-alpine/commit/fe41484d0a54a09288bc887e110d67647ee4ff51))
* chnage the version number ([5b6f78d](https://github.com/ZeroGachis/debezium-alpine/commit/5b6f78dea6de43c9f26611411eb8cf72a60b5cd8))
* test no release ([69261fe](https://github.com/ZeroGachis/debezium-alpine/commit/69261fe22bdbba2ae8f76772fe6dd05c989fa465))
* use matrix ([b82fe4c](https://github.com/ZeroGachis/debezium-alpine/commit/b82fe4ca1a0d5412a11189745bde7d99cb68c164))
* use matrix in release also ([92f0cd9](https://github.com/ZeroGachis/debezium-alpine/commit/92f0cd953c2ebfed032d2fef8119f951af7de7ba))

## [3.3.1](https://github.com/ZeroGachis/debezium-alpine/compare/v3.3.0...v3.3.1) (2025-03-07)


### Continuous Integration

* test no release ([ba51b4c](https://github.com/ZeroGachis/debezium-alpine/commit/ba51b4ce8b90f10a89358a88823f98fdc6faca82))
* test no release ([5a05a46](https://github.com/ZeroGachis/debezium-alpine/commit/5a05a46c9f8cb84045947df2502fc1f18ff9db50))

## [3.3.0](https://github.com/ZeroGachis/debezium-alpine/compare/v3.2.2...v3.3.0) (2025-03-07)


### Features

* add direct donwload of snwoflake connector ([1f32f1e](https://github.com/ZeroGachis/debezium-alpine/commit/1f32f1e32b583556eb31135b5e8cf92fd1973b28))


### Miscellaneous Chores

* add snowflake files ([2d7b3ba](https://github.com/ZeroGachis/debezium-alpine/commit/2d7b3ba8756c57e4e4a1523249361541ec345a7a))

## [3.2.2](https://github.com/ZeroGachis/debezium-alpine/compare/v3.2.1...v3.2.2) (2025-03-07)


### Continuous Integration

* make all steps depends on the previous ([9549989](https://github.com/ZeroGachis/debezium-alpine/commit/954998964da2cf5c48f87e5833d2e64b22b45d3e))
* make all steps depends on the previous ([5b1dbf9](https://github.com/ZeroGachis/debezium-alpine/commit/5b1dbf9f8e07c7a0b4c23c9532d5297cd73c641e))

## [3.2.1](https://github.com/ZeroGachis/debezium-alpine/compare/v3.2.0...v3.2.1) (2025-03-07)


### Continuous Integration

* fix env var usage ([c8562dd](https://github.com/ZeroGachis/debezium-alpine/commit/c8562ddb5743c2e282d1a42ca2c77a4da6705664))
* fix env var usage ([a4abc7a](https://github.com/ZeroGachis/debezium-alpine/commit/a4abc7af961dce74a0bae6a81055b29ec76cea3a))

## [3.2.0](https://github.com/ZeroGachis/debezium-alpine/compare/v3.1.1...v3.2.0) (2025-03-07)


### Features

* add new image ([0e041dd](https://github.com/ZeroGachis/debezium-alpine/commit/0e041ddea520dfafe338705d93f93ddb6d30b415))
* add new image ([86c6a52](https://github.com/ZeroGachis/debezium-alpine/commit/86c6a52a84c4344f9912a580deb3bf2007e2dfed))


### Continuous Integration

* add renovate maven compatible file ([74ab540](https://github.com/ZeroGachis/debezium-alpine/commit/74ab54079e6b1c075ac17cf38bb18000f69bde1e))
* add renovate maven compatible file ([53a456e](https://github.com/ZeroGachis/debezium-alpine/commit/53a456e1ae6edfe72c6e32a1df04a1fa519a604c))
* fix wrong parameter name ([64533ed](https://github.com/ZeroGachis/debezium-alpine/commit/64533ed8ca07e938908ea69c306f4bb7cd8cfe9e))
* more explicit jobs name, new pre-commit ([c5f457c](https://github.com/ZeroGachis/debezium-alpine/commit/c5f457c46f1fee8e1e18321a797c479d4497a306))
* more explicit jobs name, new pre-commit ([9d15301](https://github.com/ZeroGachis/debezium-alpine/commit/9d15301ce4ea420d3a167a0b5a3bd7fe7997de99))

## [3.1.1](https://github.com/ZeroGachis/debezium-alpine/compare/v3.1.0...v3.1.1) (2025-03-06)


### Bug Fixes

* add step on CI release ([a5f8c54](https://github.com/ZeroGachis/debezium-alpine/commit/a5f8c543cdab89fe13166fa057ff3be3d1d855c3))
* add step on CI release ([2eeb74d](https://github.com/ZeroGachis/debezium-alpine/commit/2eeb74dff3480d60b749d2fda81afdb51ea5c5a0))

## [3.1.0](https://github.com/ZeroGachis/debezium-alpine/compare/v0.1.2...v3.1.0) (2025-03-06)


### Miscellaneous Chores

* build connect-base image ([fd1f00f](https://github.com/ZeroGachis/debezium-alpine/commit/fd1f00fa81fc1d4d5476a39dbdb9ecb6982bfbb2))
* make hadolint happy ([8e505b1](https://github.com/ZeroGachis/debezium-alpine/commit/8e505b12c34ff7b39a48133991f48a80bdd8187d))
* release 3.1.0.Alpha2 ([f56d4a1](https://github.com/ZeroGachis/debezium-alpine/commit/f56d4a1673b28648e248a09f2e436577d5dccf4f))

## [0.1.2](https://github.com/ZeroGachis/debezium-alpine/compare/v0.1.1...v0.1.2) (2025-03-06)


### Miscellaneous Chores

* use teams that exists ([17fd70d](https://github.com/ZeroGachis/debezium-alpine/commit/17fd70d0f224f3039653858a25718d28b39209da))
* use teams that exists ([ac44cd5](https://github.com/ZeroGachis/debezium-alpine/commit/ac44cd5e6d29e2299d15ced3dfba470663233baa))

## [0.1.1](https://github.com/ZeroGachis/debezium-alpine/compare/v0.1.0...v0.1.1) (2025-03-06)


### Bug Fixes

* **ci:** add secrets inheritance to release workflow ([7e20234](https://github.com/ZeroGachis/debezium-alpine/commit/7e20234d6f37844f28794c78eddddeb32223af86))
* **ci:** Dockerhub registry name ([b411e9a](https://github.com/ZeroGachis/debezium-alpine/commit/b411e9a00df0bfefc9511e4716f667d26d7aca25))
* **ci:** release branch name ([2988e09](https://github.com/ZeroGachis/debezium-alpine/commit/2988e098b8c8e8bb2278be0c68715b3b2692bcca))


### Miscellaneous Chores

* change the way we build images ([d7031c6](https://github.com/ZeroGachis/debezium-alpine/commit/d7031c666d631b63e10d056ba89d2a7e881bd483))
* change the way we vuild images ([0fd882d](https://github.com/ZeroGachis/debezium-alpine/commit/0fd882df589862afdb87c192c7c0f35a128c3aeb))
* **ci:** initiate CI for public image ([6e14c77](https://github.com/ZeroGachis/debezium-alpine/commit/6e14c7751751e37068cd444edff228a4a88d7b26))
* **ci:** initiate CI for public image ([5566a9e](https://github.com/ZeroGachis/debezium-alpine/commit/5566a9e73bb21576556fdc83a6a7598b92f3fb0a))
* **deps:** update docker/build-push-action digest to 471d1dc ([c4c58b9](https://github.com/ZeroGachis/debezium-alpine/commit/c4c58b9dfc16a43c75c50dde288d774f7cfad935))
* **deps:** update docker/build-push-action digest to 471d1dc ([38217ba](https://github.com/ZeroGachis/debezium-alpine/commit/38217baacf50163dce0f9a2b645f4bb1a3bd6d90))
* **deps:** update docker/login-action digest to 327cd5a ([8033990](https://github.com/ZeroGachis/debezium-alpine/commit/80339901bf6f13f45595d9afce44a30e11f558e3))
* **deps:** update docker/login-action digest to 327cd5a ([112bee8](https://github.com/ZeroGachis/debezium-alpine/commit/112bee8ad142f1d8e3362a808f1242be620db126))
* **deps:** update docker/metadata-action digest to 902fa8e ([3310f52](https://github.com/ZeroGachis/debezium-alpine/commit/3310f52b2e043044cc3ab10db0e2a74bd9e57bc3))
* **deps:** update docker/metadata-action digest to 902fa8e ([3d42e46](https://github.com/ZeroGachis/debezium-alpine/commit/3d42e462c08651e2897a0785365b16966280e6a7))
* init repo ([e8cfaf7](https://github.com/ZeroGachis/debezium-alpine/commit/e8cfaf72cdbd2b5bad648d86733bb2bd9733f06d))
* init repo ([6ef74d1](https://github.com/ZeroGachis/debezium-alpine/commit/6ef74d1e24ad0f21b7092306454a17ee67b14626))
