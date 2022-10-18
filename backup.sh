cp -rf -u "D:\no_install_software\tai.1.0.0.6\Data" ./Tai
cp -rf -u "D:\no_install_software\tai.1.0.0.6\AppIcons" ./Tai
cp -f D:/Documents/password.kdbx ./
cp -rf -u G:/galgame/哥哥，早上起床之前都要抱紧我哦！/savedata ./galgame/哥哥，早上起床之前都要抱紧我哦！
cp -rf -u G:/galgame/魔女的夜宴/savedata ./galgame/魔女的夜宴
cp -rf -u "C:/Users/lxl/AppData/Roaming/NEKO WORKs/nekopara3" ./galgame/nekopara3
cp -rf -u "G:/galgame/May-Be SOFT/CHANGE/Save" ./galgame/CHANGE
cp -rf -u C:/Users/lxl/AppData/Roaming/RenPy/DDLC-1454445547 ./galgame/DDLC
cp -rf -u "G:\galgame\灵感满溢的甜蜜创想\savedata_cn" ./galgame/灵感满溢的甜蜜创想
cp -rf -u "C:\Users\lxl\Saved Games\MoeNovel\A Sky Full of Stars" ./galgame/仰望夜空的星辰
git add -A
git commit -m $(date "+%Y%m%d-%H:%M:%S")
git push origin main
exec /bin/bash