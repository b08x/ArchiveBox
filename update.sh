#!/usr/bin/env bash


# to ensure the repository is fully updated, run this on changes
git fetch && git pull && \
git submodule update --init --recursive && \
git pull --recurse-submodules
