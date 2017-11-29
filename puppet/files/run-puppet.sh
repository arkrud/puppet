#!/bin/bash
cd /etc/puppetlabs/code/environments/puppet/puppet && git pull
/opt/puppetlabs/bin/puppet apply manifests/
