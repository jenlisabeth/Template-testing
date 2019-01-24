#!/bin/bash
sudo -i
rm cityconfig -R -f
git clone https://github.com/jenlisabeth/template-testing cityconfig
cd cityconfig
./scripts/install.sh $1 $2 $3 $4 $5 $6 $7