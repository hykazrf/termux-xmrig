#!/bin/sh

# 更新系统和安装依赖
pky install -y sudo
sudo pkg update && sudo pkg upgrade -y
sudo pkg install -y automake clang git vim cmake gcc gmake libssl libuv screen

# 克隆 XMRig 仓库
git clone https://github.com/xmrig/xmrig
cd xmrig

# 创建构建目录并配置选项
rm -rf build
mkdir build && cd build
cmake .. -DWITH_HWLOC=OFF

# 编译 XMRig
gmake -j$(sysctl -n hw.ncpu)

# 返回主目录
cd ~

# 创建快捷启动脚本
cat <<'EOF' > start
#!/bin/sh

# 生成随机矿工名
WORKER_NAME="unmineable_worker_$(date +%s)_$RANDOM"

# 创建并启动一个新的 screen 会话，执行挖矿程序
screen -dmS xmrig_mining ./xmrig/build/xmrig -a gr -o stratum+ssl://ghostrider.unmineable.com:443 \
-u DOGE:DFZf68zsixcBnU7d2xWX3bmfSFEBenviz1.${WORKER_NAME}#6sma-emfh -p x -t 2

# 输出通知
echo "XMRig 挖矿已在后台运行，并且在 screen 会话中运行！"
echo "你可以通过 'screen -r xmrig_mining' 来查看挖矿日志。"
EOF

# 设置执行权限
chmod +x start

# 启动脚本
./start

# 完成通知
echo "XMRig 编译完成并已在后台运行！"
