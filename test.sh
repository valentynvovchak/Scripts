#!/bin/bash

sed -i '/export BUNDLR_ADDRESS=<YOUR_ADDRESS>/d' ~/.bash_profile
CASCADIA_ADDRESS=$(cascadiad keys show wallet -a)
CASCADIA_VALOPER=$(cascadiad keys show wallet --bech val -a)
echo 'export CASCADIA_ADDRESS='${CASCADIA_ADDRESS} >> $HOME/.bash_profile
echo 'export CASCADIA_VALOPER='${CASCADIA_VALOPER} >> $HOME/.bash_profile
source $HOME/.bash_profile
