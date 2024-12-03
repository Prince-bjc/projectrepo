#!/bin/bash

# Define the path to your project on the vps
REMOTE_PATH="/home/dh_x6wgiy/jeabyi.dreamhosters.com

# Sync the built site to your dreamhost vps using rsync over SSH
rsync -avz --delete ./output/ dh_x6wgiy@iad1-shared-b7-38.dreamhost.com:$REMOTE_PATH

# Restart service
ssh dh_x6wgiy@iad1-shared-b7-38.dreamhost.com 'sudo systemctl restart  nginx'

