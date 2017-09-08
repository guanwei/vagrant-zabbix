使用vagrant启动一个virtual box虚拟机，并在其中运行zabbix docker容器

如果网络环境需要走代理的话，需要添加环境变量 `http_proxy`，`https_proxy` 和 `no_proxy`

## windows上运行Zabbix Docker

首先确保安装有以下软件
- vagrant
- virtualbox

可以运行 `win-env-installer.bat` 快速安装，必须以管理员身份运行

之后运行以下命令安装Zabbix Docker
```
vagrant up
```

Zabbix前端可以在浏览器中通过 http://10.10.10.10 进行访问。默认的用户名／密码为 admin/zabbix