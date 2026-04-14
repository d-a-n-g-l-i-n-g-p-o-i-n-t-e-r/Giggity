#!/usr/bin/env bash

read -p "Enter file to run or leave empty:" file
file="${file:-my_solution.py}"

read -p "Enter API Key or leave empty" api_key 

echo ./"$file":/app/solution.py 
docker run -v ./"$file":/app/solution.py \
c0rp/innoforce.kz:sec-guard-latest --hook /app/solution.py --api-key "$api_key"
