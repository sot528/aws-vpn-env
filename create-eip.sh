#!/usr/bin/env bash

aws cloudformation deploy \
  --template-file create-eip.yaml \
  --capabilities CAPABILITY_IAM \
  --stack-name ${EIP_PREFIX}

# Notification
if [ "$(uname)" == 'Darwin' ]; then
  osascript -e 'display notification "Done." with title "Create EIP Script"'
fi
