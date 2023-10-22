#!/bin/bash

# Create necessary directories
mkdir -p /data/compose/harbor/config
mkdir -p /data/compose/harbor/data

# Set permissions
chmod 755 /data/compose/harbor/config
chmod 755 /data/compose/harbor/data

# Create Docker volumes
# Note: Replace 'harbor_postgresql_data' and other volume names with the actual names used in your compose/json files
docker volume create harbor_postgresql_data
docker volume create harbor_core_data
docker volume create harbor_jobservice_data
docker volume create harbor_redis_data
docker volume create harbor_registry_data

# Exit
exit 0
