#!/bin/bash
# Script intended to be run on unraid host before starting the container stack
# curl -Ls https://raw.githubusercontent.com/talltechy/docker-compose/main/bitnami-harbor/pre-run.sh | bash

# Create Docker volumes
docker volume create harbor_postgresql_data
docker volume create harbor_core_data
docker volume create harbor_jobservice_data
docker volume create harbor_redis_data
docker volume create harbor_registry_data
docker volume create harbor_config

cd /var/lib/docker/volumes/harbor_config/_data

# Download and extract Harbor portal configuration files
# Original Command
# curl -L https://github.com/bitnami/containers/archive/main.tar.gz | tar xz --strip=2 containers-main/bitnami/harbor-portal && cp -RL harbor-portal/config . && rm -rf harbor-portal
# Modified Command
curl -L https://github.com/bitnami/containers/archive/main.tar.gz | tar xz --strip=2 containers-main/bitnami/harbor-portal && cp -RL harbor-portal/config . && rm -rf harbor-portal

# Exit
exit 0
