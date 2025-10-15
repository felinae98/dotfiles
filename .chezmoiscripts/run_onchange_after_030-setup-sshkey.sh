#!/bin/bash
mkdir -p ~/.ssh
touch ~/.ssh/known_hosts

if ! ssh-keygen -F '[ssh.github.com]:443'; then
  ssh-keyscan -p 443 -t rsa,ecdsa,ed25519 ssh.github.com >>~/.ssh/known_hosts
fi
