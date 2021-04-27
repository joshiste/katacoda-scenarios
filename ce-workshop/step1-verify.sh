#!/bin/sh

curl -IXGET https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].[[KATACODA_DOMAIN]]/products && echo "done"