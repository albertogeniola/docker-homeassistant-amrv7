#!/bin/bash

VERSION=2025.08

# ATTENTION: the following parameters should match the ones from build.yaml
docker build --build-arg "BUILD_FROM=ghcr.io/home-assistant/armv7-base-python:3.11-alpine3.17" \
    --build-arg "SSOCR_VERSION=2.23.1" \
    --build-arg "LIBCEC_VERSION=6.0.2" \
    --build-arg "TELLDUS_COMMIT=2598bbed16ffd701f2a07c99582f057a3decbaf3" \
    --build-arg "PICOTTS_HASH=e3ba46009ee868911fa0b53db672a55f9cc13b1c" \
    -t ghcr.io/albertogeniola/docker-homeassistant-amrv7-base-image:${VERSION} \
    .

