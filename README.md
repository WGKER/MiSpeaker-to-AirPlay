## MiAir - 为不支持DLNA的小爱音箱添加 DLNA 与 AirPlay 1 支持

### 引用以下开源项目代码 由衷感谢

项目文件拷贝自：https://github.com/SyunSS/MiAir/tree/docker

拷贝日期：2026-04-27

拷贝版本：v0.2.1-alpha

自修改workflows镜像打包脚本，docker.yaml，只打包适配arm64的docker镜像

编辑docker.yaml后触发Actions自动打包镜像，或后续需要重新打包Actions中选中后手动打包


**[XiaoMusic](https://github.com/hanxi/xiaomusic "XiaoMusic")** &ensp; **[AirPlay2 Receiver](https://github.com/openairplay/airplay2-receiver "AirPlay2 Receiver")** &ensp; **[MaCast](https://github.com/xfangfang/Macast "MaCast")**

### 快速开始

### Docker (Thanks @SyunSS)

支持平台：Linux / OpenWrt / macOS

#### 使用脚本部署
```bash
# 安装 Git
opkg update
opkg install git
opkg install git-http

# 克隆项目
rm -rf MiAir # 如果是更新，需要清理旧的部署目录
git clone https://github.com/KiriChen-Wind/MiAir.git
cd MiAir

# 赋予权限并运行安装脚本
chmod +x deploy.sh manage.sh
./deploy.sh
```

安装完成后访问 `http://容器宿主机IP:8300` 即可打开 Web 管理界面。
请确保容器网络为Host。\
部分情况下，修改配置后容器可能无法自动重启，请手动重启容器。
