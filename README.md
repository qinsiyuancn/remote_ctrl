# linux_event

用于事件产生的测试程序

可用于同时控制多台机器产生事件

# 环境

需要安装expect

# 使用方法

```
mermaidgraph
start(开始)-->fixconf[修改event.conf内容]
fixconf-->exec[执行./start.sh]
exec-->endgraph(结束)
```

# 原理

```
mermaidgraph
start(开始)-->readline{行读event.conf}
readline-->|不是文件结尾|equal{含有等号=}
equal-->|是|setenv[设置环境变量]
setenv-->readline
equal-->|否|exec[执行相应命令]
exec-->readline
readline-->|文件结尾|endgraph(结束)
```
# 常见环境变量

变量名 | 含义
---|---
ip | 远程主机ip地址
username | 远程主机登陆用户名
passwd | 远程主机密码
count | 事件产生次数

# 文件组织

路径 | 作用
---|---
cases | 用例脚本
communicater | 远程计算机交互程序，可用于scp或bash命令的执行
tool | 可执行程序
event.conf | 配置文件
start.sh | 主程序

# 集成

将脚本放入cases路径即可

对于需要和远程机器交互的脚本，可以将交互的脚本放入communicater, cases脚本调用communicater交互脚本

其他程序可放入tool
