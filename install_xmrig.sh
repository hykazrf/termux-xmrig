#!/bin/bash

# 更新系统和升级所有软件包
sudo apt update && sudo apt upgrade -y

# 安装构建 XMRig 所需的依赖包
sudo apt install -y automake clang git vim cmake build-essential libssl-dev libuv1-dev

# 克隆 XMRig 仓库
git clone https://github.com/xmrig/xmrig

# 进入 xmrig 目录并创建构建目录
cd xmrig
rm -rf build
mkdir build && cd build

# 配置构建选项
cmake .. -DWITH_HWLOC=OFF

# 编译 XMRig
make -j$(nproc)

# 设置 start 脚本执行权限
chmod +x start

# 可选：将 start 脚本复制到主目录并删除源文件
cd $HOME
cp termux-xmrig/start ~
rm termux-xmrig/start

# 完成并准备开始挖矿
echo "XMRig 编译完成，可以开始挖矿！"
