#!/usr/bin/env bash
set -e

database_container_name=$(basename $(pwd) | tr '[:upper:]' '[:lower:]')-dev-database 
data_dir=$(pwd)/tmp/dev-database

create_container() {
  if [ ! -d $data_dir ]; then
    mkdir -p $data_dir
  fi
  docker run -d -v $data_dir:/var/lib/postgresql/data -v /etc/passwd:/etc/passwd:ro --user $(id -u):$(id -g) -p 3001:5432 --name $database_container_name postgres
}

if [ ! "$(docker ps --all | grep $database_container_name)" ]; then
  # container doesn't exist, create one
  echo "Database container doesn't exist.Creating..."
  create_container
  echo "Done!"
fi

# start container if it's not started
if [ ! "$(docker ps | grep $database_container_name)" ]; then
  echo "Database container not running. Starting..."
  docker start $database_container_name
  echo "Done!"
fi

