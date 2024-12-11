echo "欢迎使用WY-Tools v1.0"
echo -e " __        __ __   __          _____                   _         "
echo -e " \ \      / / \ \ / /         |_   _|   ___     ___   | |  ___   "
echo -e "  \ \ /\ / /   \ V /   _____    | |    / _ \   / _ \  | | / __|  "
echo -e "   \ V  V /     | |   |_____|   | |   | (_) | | (_) | | | \__ \  "
echo -e "    \_/\_/      |_|             |_|    \___/   \___/  |_| |___/  "
echo -e "1.更新系统软件源"
echo -e "2.安装python环境"
echo -e "3.安装VS code（自动安装python3、JDK21）环境"
echo -e "4.卸载VS coden5.卸载自动安装的python3、JDK21环境"
echo -e "5.退出WY-Toolsn"
echo -e "请输入选项："
read num
case $num in
1)
echo "正在更新系统软件源..."
sudo apt-get update
echo "软件源更新完成！"
;;
2)
echo "正在安装python环境..."
sudo apt-get install python3-pip python3-dev -y
pip config set global.index-url https://mirrors.tuna.tsinghua.edu.cn/pypi/web/simple
echo "python环境安装完成！"
;;
3)
echo "正在安装VS code环境..."
echo "正在下载VS code安装包..."
wget  https://vscode.download.prss.microsoft.com/dbazure/download/stable/f1a4fb101478ce6ec82fe9627c43efbf9e98c813/code_1.95.3-1731513102_amd64.deb
sudo apt-get install ./code_1.95.3-1731513102_amd64.deb
echo "正在安装python3环境..."
sudo apt-get install python3-pip python3-dev -y
pip config set global.index-url https://mirrors.tuna.tsinghua.edu.cn/pypi/web/simple
wget https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.deb
echo "正在安装JDK21环境..."
sudo apt-get install ./jdk-21_linux-x64_bin.deb
echo "安装完成！"
;;
4)
echo "正在卸载VS code环境..."
sudo apt-get remove code
sudo apt-get remove JDK-21
sudo apt-get remove python3-pip
sudo apt-get remove python3-dev
echo "VS code环境卸载完成！"
;;
5)
安装WYqemu-gui
echo "正在安装WYqemu-gui..."
git clone https://github.com/wangyang-yuna/WYqemu-gui.git
cd WYqemu-gui
bash ./install.sh
echo "WYqemu-gui安装完成！"
;;
*)
echo "输入错误！"
;;
esac