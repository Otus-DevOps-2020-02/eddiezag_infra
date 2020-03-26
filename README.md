# eddiezag_infra
eddiezag Infra repository

```
testapp_IP = 34.91.233.99
testapp_port = 9292
```

# Create Firewall Rule from remote console

```
gcloud compute --project=infra-271209 firewall-rules create default-puma-server --allow=tcp:9292 --target-tags=puma-server --direction=INGRESS --priority=1000 --network=default
```
#Added bucket on GCP and script

```
startup_script.sh
```
# Deploy VM instance including script
```
/snap/bin/gcloud compute instances create reddit-app\
  --boot-disk-size=10GB \
  --image-family ubuntu-1604-lts \
  --image-project=ubuntu-os-cloud \
  --machine-type=g1-small \
  --tags puma-server,http-server,https-server \
  --metadata startup-script-url=gs://reddit-app-scripts/startup_script.sh\
  --restart-on-failure
```

# Lanch bellow command to create VM instance
```
/snap/bin/gcloud compute instances create reddit-app\
  --boot-disk-size=10GB \
  --image-family ubuntu-1604-lts \
  --image-project=ubuntu-os-cloud \
  --machine-type=g1-small \
  --tags puma-server,http-server,https-server \
  --metadata startup-script-url=gs://reddit-app-scripts/startup_script.sh\
  --restart-on-failure
```

## Как проверить работоспособность:
 http://34.91.233.99:9292

