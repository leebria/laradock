#!/usr/bin/env bash

set -e

function up() {
    docker-compose up -d nginx mariadb laravel-echo-server redis
}

function down() {
    docker-compose down
}

function build() {
    docker-compose build
}

if [[ "$1" = "up" ]]
then
    up
fi

if [[ "$1" = "down" ]]
then
    down
fi

if [[ "$1" = "build" ]]
then
    build
fi
