rm -r Data-Tai
rm -r galgame/*
cp -f D:/Documents/password.kdbx ./
cp -r -f D:/no_install_software/tai/Data ./Data-Tai
cp -r -f G:/galgame/苍蓝彼端的四重奏官方中文/SaveData ./galgame/SaveData-AoKana
cp -r -f G:/galgame/哥哥，早上起床之前都要抱紧我哦！/savedata ./galgame/savedata-onigyu_chs
cp -r -f G:/galgame/冥契的牧神节/savedata ./galgame/savedata-meikeinoruperukaria
cp -r -f G:/galgame/魔女的夜宴/savedata ./galgame/savedata-sanobawichi
cp -r -f "C:/Users/lxl/AppData/Roaming/NEKO WORKs/nekopara3" ./galgame/nekopara3
cp -r -f "G:/galgame/May-Be SOFT/CHANGE/Save" ./galgame/Save-CHANGE
git add -A
git commit -m $(date "+%Y%m%d-%H:%M:%S")
git push origin main
exec /bin/bash