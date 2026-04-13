#!/usr/bin/env bash

docker run -v ./my_solution.py:/app/solution.py \
c0rp/innoforce.kz:sec-guard-latest --hook /app/solution.py
