#!/bin/bash
USER=rhel

dnf install -y tmux

echo "Adding wheel" > /root/post-run.log
usermod -aG wheel rhel

echo "Fixing permissions" >> /root/post-run.log
chown -R rhel:rhel /home/rhel/
