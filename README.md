## MiAir - 为小爱音箱添加 DLNA 与 AirPlay 1

### 引用项目
**[MiAir](https://github.com/KiriChen-Wind/MiAir "MiAir")** &ensp; **[XiaoMusic](https://github.com/hanxi/xiaomusic "XiaoMusic")** &ensp; **[AirPlay2 Receiver](https://github.com/openairplay/airplay2-receiver "AirPlay2 Receiver")** &ensp; **[MaCast](https://github.com/xfangfang/Macast "MaCast")**

### 自用声明

本项目为MiAir的纯arm64 docker版，仅自用，非盈利，不对外负责

### 快速开始

#### 一、打包镜像

打包arm64版docker镜像

#### 二、运行容器

下载镜像文件，配置运行docker容器

#### 三、使用MiAir

访问 `http://容器宿主机IP:8300`  Web 管理界面，部分情况下，修改配置后容器可能无法自动重启，需手动重启容器

### 更细日志

2026-05-12

版本：miair_v0.3.9-alpha-arm64

更新：

      ***继续优化页脚显示，容器内版本同步镜像标签
      ***项目内所有文件版本号同步更新到0.3.9
      ***构建docker镜像，只需修改build dockers.yml内的镜像标签，版本号自动同步

2026-05-11

版本：miair_v0.3.9-alpha-arm64

更新：

      ***优化docker镜像大小
      ***删除web中检查更新内容
      ***web页脚版本号显示

版本：miair_v0.3.8-alpha-arm64

更新：
      
      ***优化隔空播放时，米家app音箱界面错误匹配音乐id，显示不相关音乐信息及封面，现已修复为不显示

2026-05-07

版本：miair_v0.3.7-alpha-arm64

更新：

      ***只打包docker镜像
      修复部分老旧型号设备无法暂停播放的问题。
      修复部分设备曲目切换时音量被错误调节的问题。
      新增自动检查更新功能。
      优化了部分代码逻辑，减小了资源占用，增强了稳定性。

2026-05-03

版本：miair_v0.3.1-alpha-arm64

更新：

      ***只打包docker镜像
      重构 WebUI。
      新增 默认音量级别 功能。
      新增 故障自动应对 功能，可在遇到故障时自动重新启动。
      修复部分设备暂停播放后，语音唤醒后仍会继续播放的bug。
      修复部分设备调整音乐进度时，时间存在偏差的bug。
      优化了部分代码逻辑，减小了资源占用，增强了稳定性。
