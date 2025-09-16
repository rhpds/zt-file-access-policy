#!/bin/bash

# Pull cowsay from a release tarball in the repo
curl -L -O https://github.com/Code-Hex/Neo-cowsay/releases/download/v2.0.4/cowsay_2.0.4_Linux_x86_64.tar.gz

# Allow ansible to run runtime-automation 
echo "allow perm=any auid=1000 trust=1 : dir=/home/rhel/.ansible/" > /etc/fapolicyd/rules.d/50-ansible.rules

echo "DONE" > /root/post-run.log

