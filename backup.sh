rm -r Data-Tai
rm -r galgame/*
cp -f D:/Documents/password.kdbx ./
cp -r -f D:/no_install_software/tai1.0.0.5/Data ./Data-Tai
cp -r -f G:/galgame/哥哥，早上起床之前都要抱紧我哦！/savedata ./galgame/savedata-onigyu_chs
cp -r -f G:/galgame/冥契的牧神节/savedata ./galgame/savedata-meikeinoruperukaria
cp -r -f G:/galgame/魔女的夜宴/savedata ./galgame/savedata-sanobawichi
cp -r -f "C:/Users/lxl/AppData/Roaming/NEKO WORKs/nekopara3" ./galgame/nekopara3
cp -r -f "G:/galgame/May-Be SOFT/CHANGE/Save" ./galgame/Save-CHANGE
cp -r -f C:/Users/lxl/AppData/Roaming/RenPy/DDLC-1454445547 ./galgame/DDLC-1454445547
cp -r -f "G:/galgame/七音学园-旅行部-2（七ヶ音学園 旅行部02 Hakone編）/savedata_cn" ./galgame/nanakaotogakuen-ryokoubu
git add -A
git commit -m $(date "+%Y%m%d-%H:%M:%S")
git push origin main
exec /bin/bash