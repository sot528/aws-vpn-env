#!/usr/bin/env bash

aws cloudformation deploy \
  --template-file template.yaml \
  --capabilities CAPABILITY_IAM \
  --stack-name vpnenv$1 \
  --parameter-overrides \
    Username=${USER_NAME} \
    VPNPassword=${VPN_PASSWORD} \
    VPNPhrase=${VPN_PHRASE} \
    Size=${SIZE}


# Notification
if [ "$(uname)" == 'Darwin' ]; then
  osascript -e 'display notification "Done." with title "Deploy Script"'
fi
