#!/bin/bash

[[ $1 ]] || { echo "se necesita el archivo env"; exit 1; }


for linea in $(ccdecrypt -c "$1"); do
    echo "$linea"
    export "$linea"
done

docker-compose up -d
