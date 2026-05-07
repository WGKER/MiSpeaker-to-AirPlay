## MiAir - 为无 DLNA 的小爱音箱添加 DLNA 与 AirPlay 1 支持

### 引用以下开源项目代码 由衷感谢

项目文件拷贝自：https://github.com/KiriChen-Wind/MiAir

拷贝日期：2026-05-07

拷贝版本：v0.3.7-alpha

自修改workflows镜像打包脚本，docker.yaml，只打包适配arm64的docker镜像

编辑docker.yaml后触发Actions自动打包镜像，或后续需要重新打包Actions中选中后手动打包

**[XiaoMusic](https://github.com/hanxi/xiaomusic "XiaoMusic")** &ensp; **[AirPlay2 Receiver](https://github.com/openairplay/airplay2-receiver "AirPlay2 Receiver")** &ensp; **[MaCast](https://github.com/xfangfang/Macast "MaCast")**

### 快速开始

#### 一、使用Actions打包docker镜像

点击Actions，选择Build MiAir (arm64 only, download only)，点击运行workflow，开始自动打包生成arm64版docker镜像

#### 二、导入docker镜像，运行容器

下载镜像文件到本地，并存储到主机

主机docker load -i /镜像路径 导入镜像

配置docker容器即可运行

配置参考：

docker run -d \
  --name miair \
  --network=host \
  -p 8300
  -e MIAIR_HOSTNAME=你的局域网IP \
  -v /mnt/sata1-4/miair/conf:/app/conf \ #你需要存储配置文件的目录
  miair:v0.1.3-alpha-2-arm64

#### 三、使用MiAir

运行后访问 `http://容器宿主机IP:8300` 即可打开 Web 管理界面，部分情况下，修改配置后容器可能无法自动重启，需手动重启容器
