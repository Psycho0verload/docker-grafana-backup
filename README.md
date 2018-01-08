# INFO
This is forked from https://github.com/aimtheory/grafana-backup-docker


# docker-grafana-backup
A Docker container that has https://github.com/ysde/grafana-backup-tool

Much thanks to @ysde for such a great tool!

This repository is for a Docker image that is meant to be deployed on Kubernetes as a [cron job](https://kubernetes.io/docs/concepts/workloads/controllers/cron-jobs/) that runs against a [Grafana](https://grafana.com/) instance that is also deployed on Kubernetes. But it could be used outside of Kubernetes as well.

When run, this Docker image will clone the https://github.com/ysde/grafana-backup-tool repo and use it to backup all Grafana data to an S3 bucket.

Usage
There are 2 environment variable that need to be set when the Docker container is run from this image:
* GRAFANA_URL
* GRAFANA_TOKEN

```
docker build -t grafana-backup-docker:latest
docker run -v "/opt/Smarthome/Grafana/backup:/backup" -e GRAFANA_URL=[GRAFANA_URL] -e GRAFANA_TOKEN=[GRAFANA_TOKEN] grafana-backup-docker:latest
```
