#!/bin/bash
# fixes orconsole
# created by : C0SM0

# arguments
# $1 - local path
# $2 - target ip address
# $3 - target password

# remove target from known hosts
ssh-keygen -f "$1/../.ssh/known_hosts" -R "$1"

# display password for user ease of access
echo target password is "$3"

# connect to target and add it to hosts
ssh onlyrat@$2