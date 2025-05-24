FROM minio/minio:latest
CMD ["server", "/data", "--address=0.0.0.0:9000"]
