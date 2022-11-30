cp -rfn -u "D:\no_install_software\Tai1.3.0.0\Data" ./Tai
cp -rfn -u "D:\no_install_software\Tai1.3.0.0\AppIcons" ./Tai
cp -fn D:/Documents/password.kdbx ./
cp -rfn -u G:/galgame/哥哥，早上起床之前都要抱紧我哦！/savedata ./galgame/哥哥，早上起床之前都要抱紧我哦！
cp -rfn -u G:/galgame/魔女的夜宴/savedata ./galgame/魔女的夜宴
cp -rfn -u "G:/galgame/May-Be SOFT/CHANGE/Save" ./galgame/CHANGE
cp -rfn -u C:/Users/lxl/AppData/Roaming/RenPy/DDLC-1454445547 ./galgame/DDLC
cp -rfn -u "C:\Users\lxl\Saved Games\WillPlus\見上げてごらん、夜空の星を" ./galgame/
cp -rfn -u "G:\galgame\常轨脱离Creative\savedata" ./galgame/常轨脱离Creative
bash compress.sh
git add -A
git commit -m $(date "+%Y%m%d-%H:%M:%S")
git push origin main
exec /bin/bash