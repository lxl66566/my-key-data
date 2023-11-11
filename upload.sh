# 精简仓库时请不要直接删除！有非 cp 的文件在仓库内！
# tai
cp -rfu  "D:\no_install_software\Tai1.5.0.4\Data" ./Tai
cp -rfu  "D:\no_install_software\Tai1.5.0.4\AppIcons" ./Tai

# galgame
cp -rfu  C:/Users/lxl/AppData/Roaming/RenPy/DDLC-1454445547 ./galgame/DDLC
# 近月少女的礼仪 use savePath so not need to cp it
# cp -rfu "D:\Documents\近月少女的礼仪" ./galgame
cp -rfu "G:\galgame\アンレス テルミナリア\save" "./galgame/アンレス テルミナリア"
cp -rfu "C:\Users\lxl\AppData\LocalLow\AnimalHerb\Nekomimi Sweet Housemates\Utage\SaveMyPetProject2" ./galgame/家喵二三事
cp -fu "D:\galgame\樱色之云 绯色之恋\BGI.gdb" "./galgame/樱色之云 绯色之恋"
# config
    # vscode
cp -rfu "C:\Users\lxl\AppData\Roaming\Code\User\settings.json" ./config/vscode
    # v2rayN
cp -rfu "D:\no_install_software\v2rayN\guiConfigs\config.json" ./config/v2rayN
cp -rfu "D:\no_install_software\v2rayN\guiConfigs\guiNconfig.json" ./config/v2rayN

# other games
cp -fu 'D:/software/osu!/collection.db' "./other_games/osu"
cp -fu 'D:/software/osu!/scores.db' "./other_games/osu"

# browser
# cp -rfu "C:\Users\lxl\AppData\Local\Microsoft\Edge\User Data\Default\Bookmarks" ./Browser/Bookmarks
# bash encrypt.sh

git add -A
git commit -m $(date "+%Y%m%d-%H:%M:%S")
git push origin main
# git push origin2 main
exec /bin/bash