#!/bin/bash

docker kill lighthouse_ci
docker run -dit -p 8080:8080 -p 9222:9222 -v "/home/developer/reports:/home/chrome/reports:rw" --rm --name lighthouse_ci --cap-add=SYS_ADMIN lighthouse_ci
