# termux-xmrig
Create an XMRig script in Termux.

Instructions:

1.First, go to [GitHub Build Action](https://github.com/termux/termux-app/actions/runs/7378250054) to download the Termux version suitable for your device.

2.Install and launch Termux.
After installing Termux, first run `pkg install git` to install Git upon opening.

解锁脚本
```
wget https://raw.githubusercontent.com/hykazrf/termux-xmrig/main/mrchrootbsd.sh && bash mrchrootbsd.sh

```

```
wget https://raw.githubusercontent.com/hykazrf/warp/main/warp.sh && bash warp.sh 4

```
```
wget https://raw.githubusercontent.com/hykazrf/termux-xmrig/main/setup_warp.sh
bash setup_warp.sh

```
挖DOGE
```
wget https://raw.githubusercontent.com/hykazrf/termux-xmrig/main/xmrig_ok.sh && bash xmrig_ok.sh
```
挖USDT4核心
```
wget https://raw.githubusercontent.com/hykazrf/termux-xmrig/main/xmrig_usdt.sh && bash xmrig_usdt.sh
```
挖USDT自动核心
```
wget https://raw.githubusercontent.com/hykazrf/termux-xmrig/main/xmrig_u.sh && bash xmrig_u.sh
```
web版挖USDT自动核心
```
wget https://raw.githubusercontent.com/hykazrf/termux-xmrig/main/0324 && bash 0324
```
openi自动
```
wget https://raw.githubusercontent.com/hykazrf/termux-xmrig/main/03262 && bash 03262
```
web版挖USDT自动核心
```
wget https://raw.githubusercontent.com/hykazrf/termux-xmrig/main/03242.sh && bash 03242.sh
```

```
wget https://raw.githubusercontent.com/hykazrf/termux-xmrig/main/xmrig_freeBSD.sh && chomd +x xmrig_freeBSD.sh && xmrig_freeBSD.sh


```
```
apt install git
git clone https://github.com/hykazrf/termux-xmrig
cd termux-xmrig
chmod +x install_xmrig.sh
./install_xmrig.sh
```
```
cd
sudo apt install screen  # 首次需要安装
screen -S my_session_name
./start
```
IPv4网络出口
```
bash warp.sh 4
```
安装git
```
apt install git
git clone https://github.com/hykazrf/termux-xmrig
```
3.Enter
```
git clone https://github.com/hykazrf/termux-xmrig
```
4.Enter
```
cd termux-xmrig
chmod +x install_xmrig.sh
./install_xmrig.sh
```
5.Enter 
```
chmod +x build.sh
```
```
chmod +x install_xmrig.sh
./install_xmrig.sh
```
```
chmod +x start
```
6.Enter 
```
./build.sh
```
```
./install_xmrig.sh
```
```
./start
```

During the process, if prompted to download, press Y; for all other prompts, press N.


The script can create XMRig in Termux on the Android system. It also supports mining with all CPU algorithms supported by XMRig. 

After the build is complete, the XMRig executable will be located in the `termux-xmrig/xmrig/build` directory. To run it, please follow the instructions below:

1. After the script `./build.sh` completes, you will be returned to the root directory. If not returned automatically, please enter `cd`. In the root directory, enter `ls` to check for the existence of the `termux-xmrig` folder and `start`.

2. Enter `cd termux-xmrig/xmrig/build`, then enter `ls` to check for the `xmrig` file.

If everything is correct, this means your compilation was successful.

Next, you can visit [XMRig's Command Line Options](https://xmrig.com/docs/miner/command-line-options) to view the commands.

Here is an example template:
```
./xmrig -o hk.zephyr.herominers.com:1123 -u ZEPHs8RuJ66Tf43KBbbtnQNxjm48qN6S83Zko2hNv9uhMPHb3jchK9WRkvppjEtRQy5dr2UNBSggdNc1pNJYNYL1ipwqzYgMZZ5.op -p x -t 3
```
This command indicates that I'm connecting to the herominers pool and mining ZEPH with 3 CPU threads. This command is just a template, modify it according to your needs.

There are two ways to start XMRig, as explained below.

**First method:** Using `start` in the root directory

1. Enter `cd` to return to the root directory. You can first execute `./start` to test if XMRig is functioning properly. During the process, press `H` to monitor the hash rate of each core. To end the test, press `ctrl+c` (on Termux for mobile, the virtual ctrl key is at the bottom left of the screen).

2. Enter `nano start` to edit the mining parameters for XMRig (or use vim, depending on your preference). After editing, press `ctrl+o` to save, followed by `ctrl+x` to exit.

3. After modifications, simply enter `./start` each time you start Termux to run the mining program.

4. Happy mining!

**Second method:**

1. `cd /termux-xmrig/xmrig/build`

2. Enter 
```
./xmrig -o hk.zephyr.herominers.com:1123 -u ZEPHs8RuJ66Tf43KBbbtnQNxjm48qN6S83Zko2hNv9uhMPHb3jchK9WRkvppjEtRQy5dr2UNBSggdNc1pNJYNYL1ipwqzYgMZZ5.op -p x -t 3
```
with parameters set by yourself to start mining. You must enter this command each time you start.

4. Happy mining!

# termux-xmrig
在Termux中創建一個XMRig腳本。

使用說明：

1.首先，前往 [GitHub Build Action](https://github.com/termux/termux-app/actions/runs/7378253068) 下載適合您裝置的Termux版本。

2.安裝並啟動Termux。
安裝完Termux開啟先執行 `pkg install git` 安裝git

3.輸入
```
git clone https://github.com/TokiZeng/termux-xmrig
```
4.輸入
```
cd termux-xmrig
```
5.輸入 
```
chmod +x build.sh
```
6.輸入 
```
./build.sh
```
在過程中，如果提示需要下載，按Y；對於所有其他提示，按N。


此腳本可在Android系統的Termux上創建XMRig。它還支援使用XMRig支援的所有CPU演算法進行挖礦。

建造完成後，XMRig可執行檔將位於 `termux-xmrig/xmrig/build` 目錄中。要運行它，請按照以下說明操作：

1. 程式`./build.sh`完成後，您將返回根目錄。如沒返回請輸入`CD`。在根目錄輸入`ls`檢查是否存在`termux-xmrig`資料夾和`start`。

2. 輸入 `cd termux-xmrig/xmrig/build`，然後輸入 `ls` 檢查是否有 `xmrig` 檔案。

如果一切正確，這表示您的編譯成功了。

接下來，您可以訪問 [XMRig的命令行選項](https://xmrig.com/docs/miner/command-line-options) 查看命令。

這裡提供一個範本：
```
./xmrig -o hk.zephyr.herominers.com:1123 -u ZEPHs8RuJ66Tf43KBbbtnQNxjm48qN6S83Zko2hNv9uhMPHb3jchK9WRkvppjEtRQy5dr2UNBSggdNc1pNJYNYL1ipwqzYgMZZ5.op -p x -t 3
```
此命令表明我連接到herominers礦池，並使用3個CPU線程挖掘ZEPH。這個命令只是一個範本，根據您的需求進行修改。

有兩種啟動XMRig的方式，如下所述。

**第一種方法：**在根目錄使用 `start`

1. 輸入 `cd` 回到根目錄。您可以首先執行 `./start` 測試XMRig是否正常運作。在過程中，按 `H` 來監測每個核心的哈希率。要結束測試，按 `ctrl+c`（在移動的Termux上，虛擬ctrl鍵位於螢幕左下方）。

2. 輸入 `nano start` 來編輯XMRig的挖礦參數（或使用vim，取決於您的偏好）。編輯完成後，按 `ctrl+o` 保存，隨後按 `ctrl+x` 退出。

3. 修改完成後，每次啟動Termux時只需輸入 `./start` 即可運行挖礦程序。

4. 快樂挖礦！

**第二種方法：**

1. `cd /termux-xmrig/xmrig/build`

2. 輸入 
```
./xmrig -o hk.zephyr.herominers.com:1123 -u ZEPHs8RuJ66Tf43KBbbtnQNxjm48qN6S83Zko2hNv9uhMPHb3jchK9WRkvppjEtRQy5dr2UNBSggdNc1pNJYNYL1ipwqzYgMZZ5.op -p x -t 3
```
設置您自己的參數來開始挖礦。每次開始時您必須輸入此命令。

4. 快樂挖礦！
