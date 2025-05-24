# MinIO GitHub Actions

Pre-configured MinIO Docker image for GitHub Actions workflows.

## Why This Exists

GitHub Actions service containers can't accept command arguments. The official MinIO image requires `minio server /data` to start, making it incompatible with GitHub Actions services.

This image solves that by pre-configuring the command argument.

## Example usage

```yaml
services:
  minio:
    image: ghcr.io/nibbleai/minio:latest
    ports:
      - 9000:9000
    env:
      MINIO_ROOT_USER: minio
      MINIO_ROOT_PASSWORD: minio123
```

MinIO will be available at `http://localhost:9000`.

## Disclaimer

**Not affiliated with MinIO, Inc.** This is an unofficial wrapper around the official MinIO image. MinIO is licensed under GNU AGPLv3. For official support, visit [min.io](https://min.io/).
