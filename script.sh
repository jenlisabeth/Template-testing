#!/bin/bash
rm cityconfig -R -f
git clone https://github.com/jenlisabeth/template-testing cityconfig
cd cityconfig
sudo bash ./scripts/install.sh $1 $2 $3 $4 $5 $6 $7
