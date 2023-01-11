# linux_event

用于事件产生的测试程序

可用于同时控制多台机器产生事件

# 使用方法

1. 修改event.conf
2. 执行./start.sh

# 原理

start.sh行读event.conf

如果带=则设置环境变量

如果不带=则启动新进程执行相应命令

# 常见环境变量

变量名 | 含义
---|---
ip | 远程主机ip地址
username | 远程主机登陆用户名
passwd | 远程主机密码
count | 事件产生次数

# 集成

