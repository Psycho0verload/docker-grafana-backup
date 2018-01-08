#!/bin/bash
sh backup_grafana.sh
cp /tmp/dashboards.tar.gz /backup
cp /tmp/datasources.tar.gz /backup
