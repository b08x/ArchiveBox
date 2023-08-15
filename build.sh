#!/usr/bin/env bash
#
#
docker build . -t archivebox:local --no-cache && \

docker-compose -f docker-compose.yml up -d
