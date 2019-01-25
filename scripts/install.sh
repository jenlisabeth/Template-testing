#!/bin/bash
rgname="$1"

fqdn="$2"

redis="$3"

ckanuser="$4"

ckanemail="$5"

ckanpassword="$6"

ckanport="$7"


echo "Installing azure city platform" 
echo "  - Host: $fqdn"
echo "  - Redis: $redis"
echo "  - CKAN: $fqdn$ckanport"

sudo bash ./scripts/install-dependencies.sh >&1

sudo bash ./scripts/start-docker.sh $fqdn$ckanport >&1

sudo bash ./scripts/enable-datapusher.sh >&1

sudo bash ./scripts/configure-ckan.sh $rgname $ckanuser $ckanemail $ckanpassword >&1

