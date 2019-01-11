#!/bin/bash

docker stop lighthouse_ci
docker rm lighthouse_ci
docker run -dit -p 8080:8080 -p 9222:9222 -v "/home/developer/reports:/home/chrome/reports:rw" --name lighthouse_ci --cap-add=SYS_ADMIN --restart always --health-cmd "curl --fail http://localhost:9222/ || exit 1" --health-interval=5s --health-timeout=3s lighthouse_ci
