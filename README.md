# 简介

这是个集成了`Aria2c`和`webui-aria2`以及`simple-go-httpserver`的项目，并为window64位用户添加一键启动脚本。
原本的web-ui如果没有装nodejs的话只能够访问docs下的index.html文件进行下载。由于集成http服务，开启后就可以使用内网访问
- web-ui: https://github.com/ziahamza/webui-aria2
- aria2: https://github.com/aria2/aria2
- httpserver: https://github.com/tignioj/simple-go-httpserver


# 使用方法
## 1. 下载项目到本地
```
git clone https://github.com/tignioj/oneclick-startup-aria2-with-webui.git
```


## 2. 启动脚本
- 双击`startAria2.bat`同时启动web-ui和aria2c（如果已经启动则不会再次启动)
- 双击`stopAria2.bat`关闭启动的服务

## 默认配置
- webui端口: 54975, 启动后请访问localhost:54975