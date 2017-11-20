#!/bin/bash
cd /etc/puppetlabs/code/environments/puppet && git pull
/opt/puppetlabs/bin/puppet apply manifests/
