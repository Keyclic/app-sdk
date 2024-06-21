This repository provides the following packages:

 - SDK for Keyclic API in Dart

### Build

To build SDKs (docker is required).

Building uses [OpenAPI Generator](https://github.com/OpenAPITools/openapi-generator) to generate Dart source code.
To keep the generator up to date, refer to the [docker image repository](https://hub.docker.com/r/openapitools/openapi-generator-cli/tags)

```bash
bin/app generate
```

After generation documentations can be found here.

[dart documentation](dart/README.md)
