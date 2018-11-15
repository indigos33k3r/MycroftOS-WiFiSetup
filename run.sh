#!/bin/bash

run_app() {
  export NVM_DIR="/root/.nvm"
  [ -s "/root/.nvm/nvm.sh" ] && \. "/root/.nvm/nvm.sh"  # This loads nvm

  echo "nvm version"
  nvm --version
  echo "node version"
  node --version
  echo "npm version"
  npm --version
  echo "Starting wifi service  ..."
  npm start
}

cd /usr/lib/node-modules/MycroftOS-WiFiSetup
run_app > /var/log/mycroft/wifi-setup.log 2>&1


