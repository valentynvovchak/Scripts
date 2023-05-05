#!/bin/bash

# Install NVM on Ubuntu
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
source ~/.bashrc
nvm install node

# Check ballance
npx @bundlr-network/testnet-cli@latest balance $BUNDLR_ADDRESS
