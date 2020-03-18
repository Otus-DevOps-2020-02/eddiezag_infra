# eddiezag_infra
eddiezag Infra repository

Созданы две виртуальные машины

bastion_IP = 35.206.154.52

someinternalhost_IP = 10.132.0.6

Прописал в /etc/hosts внутренний IP bastion 10.132.0.5

Создал файл в домашней директории /.ssh/conf с содержимым ниже

```
#For bastion connections
Host bastion
  Preferredauthentications publickey
  IdentityFile ~/.ssh/appuser

#For connection from local machine
host someinternalhost
 HostName 10.132.0.6
 ProxyJump appuser@35.206.154.52:22
 User appuser
 IdentityFile ~/.ssh/appuser
```


На виртуальной машине bastion установил pritunl
тунель поднялся доступ к someinternalhost получил from local machine.
