# Выполнено ДЗ № 3

 - [x] Основное ДЗ
 - [ ] Задание со *

## В процессе сделано:

Созданы две виртуальные машины
```
bastion_IP = 35.206.154.52
someinternalhost_IP = 10.132.0.6
```

Создал файл в домашней директории /.ssh/conf с содержимым ниже

```
#For connection from local machine
host someinternalhost
 HostName 10.132.0.6
 ProxyJump appuser@35.206.154.52:22
 User appuser
 IdentityFile ~/.ssh/appuser
```
На виртуальной машине bastion установил pritunl
тунель поднялся доступ к someinternalhost получил.


## Как запустить проект:
 sudo bash setupvpn.sh

## Как проверить работоспособность:
 https://35.206.154.52

## PR checklist
 - [x] Выставил label с номером домашнего задания
 - [x] Выставил label с темой домашнего задания
