# Выполнено ДЗ № 6

 - [x] Основное ДЗ
 - [x] Задание со *

## В процессе сделано:

#IP for reddit-app
```
reddit-app_IP = 34.91.233.99
reddit-app_port = 9292
```

# Create Firewall Rule

```
gcloud compute --project=infra-271209 firewall-rules create default-puma-server --direction=INGRESS --priority=1000 --network=defaul$
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

## Как запустить проект:
# Lanch bellow command to create instance
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

## PR checklist
 - [x] Выставил label с номером домашнего задания
 - [x] Выставил label с темой домашнего задания
