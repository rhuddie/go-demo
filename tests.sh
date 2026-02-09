#!/usr/bin/env bash

PORT="${PORT:-8080}"

echo Check 3 albums exist at startup
curl -s http://localhost:$PORT/albums --header "Content-Type: application/json" --request "GET" | jq .[].id | test $(wc -l) -eq 3

echo Add a new album
curl -s http://localhost:$PORT/albums \
    --include \
    --header "Content-Type: application/json" \
    --request "POST" \
    --data '{"id": "4","title": "The Modern Sound of Betty Carter","artist": "Betty Carter","price": 49.99}'

echo Check 4 albums now exist
curl -s http://localhost:$PORT/albums --header "Content-Type: application/json" --request "GET" | jq .[].id | test $(wc -l) -eq 4
