#!/bin/bash

# 更新系统并安装必要的工具
echo "Updating system and installing dependencies..."
sudo apt update
sudo apt install -y wget curl

# 检查网络连接，确保可以访问外部网络
echo "Checking network connectivity..."
ping -c 4 8.8.8.8 || { echo "Network is unreachable. Please check your internet connection."; exit 1; }

# 设置 DNS (Google DNS)
echo "Setting DNS to Google DNS..."
sudo tee /etc/resolv.conf > /dev/null <<EOL
nameserver 8.8.8.8
nameserver 8.8.4.4
EOL

# 手动下载并安装 cloudflared
echo "Downloading and installing cloudflared..."
wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb -O cloudflared-linux-amd64.deb || { echo "Failed to download cloudflared. Exiting."; exit 1; }
sudo dpkg -i cloudflared-linux-amd64.deb
sudo apt --fix-broken install  # 修复依赖问题

# 验证 cloudflared 安装是否成功
echo "Verifying cloudflared installation..."
cloudflared --version || { echo "cloudflared installation failed. Exiting."; exit 1; }

# 配置 Cloudflare Warp 隧道
echo "Starting cloudflared tunnel..."
cloudflared --hostname YOUR_HOSTNAME tunnel --url http://localhost:8080 &

# 创建 systemd 服务文件以便开机启动 cloudflared
echo "Creating systemd service for cloudflared..."
sudo tee /etc/systemd/system/cloudflared.service > /dev/null <<EOL
[Unit]
Description=Cloudflare Warp Client
After=network.target

[Service]
ExecStart=/usr/local/bin/cloudflared tunnel run
Restart=always
User=nobody
Group=nogroup

[Install]
WantedBy=multi-user.target
EOL

# 重新加载 systemd 服务并启动 cloudflared
echo "Enabling and starting cloudflared service..."
sudo systemctl daemon-reload
sudo systemctl enable cloudflared
sudo systemctl start cloudflared

# 检查 IPv4 和 IPv6 地址
echo "Checking IPv4 and IPv6 addresses..."
curl -4 https://httpbin.org/ip || { echo "Failed to fetch IPv4 address. Exiting."; exit 1; }
curl -6 ifconfig.co || { echo "Failed to fetch IPv6 address. Exiting."; exit 1; }

# 提示用户完成设置
echo "Warp setup completed. Your VPS is now using Cloudflare Warp to route IPv4 traffic via IPv6."

# 完成
echo "Script execution completed!"
