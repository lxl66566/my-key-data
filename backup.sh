cp -rfu  "D:\no_install_software\Tai1.3.0.0\Data" ./Tai
cp -rfu  "D:\no_install_software\Tai1.3.0.0\AppIcons" ./Tai
cp -fu D:/Documents/password.kdbx ./
cp -rfu  G:/galgame/哥哥，早上起床之前都要抱紧我哦！/savedata ./galgame/哥哥，早上起床之前都要抱紧我哦！
cp -rfu  G:/galgame/魔女的夜宴/savedata ./galgame/魔女的夜宴
cp -rfu  "G:/galgame/May-Be SOFT/CHANGE/Save" ./galgame/CHANGE
cp -rfu  C:/Users/lxl/AppData/Roaming/RenPy/DDLC-1454445547 ./galgame/DDLC
cp -rfu  "C:\Users\lxl\Saved Games\WillPlus\見上げてごらん、夜空の星を" ./galgame/
cp -fu  "G:\galgame\真愿朦幻馆～在时间暂停的洋馆里追寻明天的羔羊们～\BGI.gdb" ./galgame/真愿朦幻馆～在时间暂停的洋馆里追寻明天的羔羊们～
cp -rfu "C:\Users\lxl\AppData\Roaming\ゆずソフトSOUR\PARQUET" ./galgame/
cp -rfu "C:\Users\lxl\AppData\Local\Microsoft\Edge\User Data\Default\Bookmarks" ./Browser/Bookmarks
bash compress.sh
git add -A
git commit -m $(date "+%Y%m%d-%H:%M:%S")
git push origin main
exec /bin/bash