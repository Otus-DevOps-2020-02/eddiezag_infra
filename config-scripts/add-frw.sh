#!/bin/bash

#add firewall rules
/snap/bin/gcloud compute --project=infra-271209 firewall-rules create default-puma-server --direction=INGRESS --priority=1000 --network=default --action=ALLOW --rules=tcp:9292 --source-ranges=0.0.0.0/0 --target-tags=puma-server

exit 0
