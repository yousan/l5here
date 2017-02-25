#!/usr/bin/env bash

NAME=${1:-laravel}
DB_HOST=${2:-mysql.dev}
DB_PORT=${3:-3306}

if [ -z "$4" ]; then
  DB_DATABASE='root_'${NAME}
else
  DB_DATABASE=$4
fi

DB_USERNAME=${5:-root}
DB_PASSWORD=${6:-example}

mysqladmin create -h${DB_HOST} -u${DB_USERNAME} -p${DB_PASSWORD} ${DB_DATABASE}
laravel new ${NAME}
sed -i '' "s/DB_HOST=127.0.0.1/DB_HOST=${DB_HOST}/" ${NAME}/.env
sed -i '' "s/DB_PORT=3306/DB_PORT=${DB_PORT}/" ${NAME}/.env
sed -i '' "s/DB_DATABASE=homestead/DB_DATABASE=${DB_DATABASE}/" ${NAME}/.env
sed -i '' "s/DB_USERNAME=homestead/DB_USERNAME=${DB_USERNAME}/" ${NAME}/.env
sed -i '' "s/DB_PASSWORD=secret/DB_PASSWORD=${DB_PASSWORD}/" ${NAME}/.env
