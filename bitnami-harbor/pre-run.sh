#!/bin/bash

# Create necessary directories
mkdir -p /data/compose/harbor/config
mkdir -p /data/compose/harbor/data

# Set permissions
chmod 755 /data/compose/harbor/config
chmod 755 /data/compose/harbor/data

# Download and extract Harbor portal configuration files
curl -L https://github.com/bitnami/containers/archive/main.tar.gz | tar xz --strip=2 containers-main/bitnami/harbor-portal && cp -RL harbor-portal/config /data/compose/harbor/config && rm -rf harbor-portal

# Create Docker volumes
docker volume create harbor_postgresql_data
docker volume create harbor_core_data
docker volume create harbor_jobservice_data
docker volume create harbor_redis_data
docker volume create harbor_registry_data

# Exit
exit 0
