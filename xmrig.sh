#!/bin/bash

# 更新系统和安装依赖
sudo apt update && sudo apt upgrade -y
sudo apt install -y automake clang git vim cmake build-essential libssl-dev libuv1-dev

# 克隆 XMRig 仓库
git clone https://github.com/xmrig/xmrig
cd xmrig

# 创建构建目录并配置选项
rm -rf build
mkdir build && cd build
cmake .. -DWITH_HWLOC=OFF

# 编译 XMRig
make -j$(nproc)

# 返回主目录
cd ~

# 创建快捷启动脚本
cat <<EOF > start
#!/bin/bash
./xmrig/xmrig/build/xmrig -a gr -o stratum+ssl://ghostrider.unmineable.com:443 -u DOGE:DFZf68zsixcBnU7d2xWX3bmfSFEBenviz1.unmineable_worker_Earthy#6sma-emfh -p x -t 2
EOF

# 设置执行权限
chmod +x start

# 后台运行挖矿
nohup ./start > xmrig.log 2>&1 &

# 完成通知
echo "XMRig 编译完成并已在后台运行！日志保存在 xmrig.log"
