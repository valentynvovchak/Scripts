#!/bin/bash

# Install NVM on Ubuntu
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
source ~/.bashrc
nvm install node

# Register Validator and Stake
sudo npm i -g @bundlr-network/testnet-cli@latest
