#!/bin/bash

# Install NVM on Ubuntu
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
source ~/.bashrc
nvm install node

# Check ballance
#npx @bundlr-network/testnet-cli@latest balance $BUNDLR_ADDRESS

BUNDLER_PORT=42069
BUNDLER_URL=https://testnet1.bundlr.network
echo 'export GW_CONTRACT="RkinCLBlY4L5GZFv8gCFcrygTyd5Xm91CzKlR6qxhKA"'
echo 'export GW_ARWEAVE=https://arweave.testnet1.bundlr.network'
echo 'export GW_STATE_ENDPOINT=https://faucet.testnet1.bundlr.network'
source ~/.bash_profile

tee .env > /dev/null <<EOF
PORT=$BUNDLER_PORT
BUNDLER_URL=$BUNDLER_URL
GW_CONTRACT=$GW_CONTRACT
GW_ARWEAVE=$GW_ARWEAVE
GW_STATE_ENDPOINT=$GW_STATE_ENDPOINT
EOF
