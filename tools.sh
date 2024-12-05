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
sudo apt-get install python3-pip
echo "python环境安装完成！"
;;
3)
echo "正在安装VS code环境..."
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install python3.9
sudo apt-get install openjdk-11-jdk
sudo apt-get install code
echo "VS code环境安装完成！"
;;
4)
echo "正在卸载VS code环境..."
sudo apt-get remove code
sudo apt-get remove openjdk-11-jdk
sudo apt-get remove python3.9
echo "VS code环境卸载完成！"
;;
5)
echo "欢迎下次使用！"
exit 0
;;
*)
echo "输入错误！"
;;
esac
