#!/bin/bash
# Runs ClycloneDX within a container

docker run --rm \
    -v "$(pwd)":/src:rw \
    -w /src cyclonedx/cyclonedx-cli $*
