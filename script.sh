#!/bin/bash
sudo -i
rm -R -f siruscitystore 
git clone https://e6d50ae94642c46edc90b8fdbc6a55b485a86cd8@github.com/jenlisabeth/Sirus-City-Store siruscitystore 
cd siruscitystore 
./scripts/install.sh $1 $2 $3 $4 $5 $6 $7
