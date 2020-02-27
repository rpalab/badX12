#!/usr/bin/env bash

set -e
set -x

#mypy badx12
black badx12 tests --check
isort --multi-line=3 --trailing-comma --force-grid-wrap=0 --combine-as --line-width 88 --recursive --check-only --thirdparty badx12 badx12 tests
