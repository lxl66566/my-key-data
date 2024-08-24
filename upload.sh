#!/usr/bin/env bash
# 精简仓库时请不要直接删除！有非 cp 的文件在仓库内！

set -euxo pipefail

# tai
cp -rfu  "D:/no_install_software/Tai1.5.0.4/Data" ./Tai
cp -rfu  "D:/no_install_software/Tai1.5.0.4/AppIcons" ./Tai

# galgame
cp -rfu  C:/Users/lxl/AppData/Roaming/RenPy/DDLC-1454445547 ./galgame/DDLC
cp -rfu "G:/galgame/アンレス テルミナリア/save" "./galgame/アンレス テルミナリア"

# config
# windows
cp -rfu "C:/Users/lxl/alias.cmd" ./config/cmd
cp -rfu "C:/Users/lxl/.bashrc" ./config/.bashrc
cp -rfu "C:/Users/lxl/.gitconfig" ./config/.gitconfig
# vscode
cp -rfu "C:/Users/lxl/AppData/Roaming/Code/User/settings.json" ./config/vscode
# v2rayN
cp -rfu "D:/no_install_software/v2rayN/guiConfigs/config.json" ./config/v2rayN
cp -rfu "D:/no_install_software/v2rayN/guiConfigs/guiNconfig.json" ./config/v2rayN
# wsl
cp -rfu "C:/Users/lxl/.wslconfig" ./config/.wslconfig
# mpv
find "D:/scoop/persist/mpv/portable_config" -maxdepth 1 -mindepth 1 -exec cp -rfu {} ./config/mpv \;
# cargo
cp -rfu "C:/Users/lxl/.cargo/config.toml" ./config/.cargo
# tabby
cp -rfu "D:/scoop/apps/tabby/current/data/config.yaml" ./config/tabby
# nushell
cp -rfu "C:/Users/lxl/AppData/Roaming/nushell/config.nu" ./config/nushell
cp -rfu "C:/Users/lxl/AppData/Roaming/nushell/env.nu" ./config/nushell
# luna translator
cp -rfu "G:/galgame/LunaTranslator/userconfig" ./config/LunaTranslator

# other games
cp -fu 'D:/software/osu!/collection.db' "./other_games/osu"
cp -fu 'D:/software/osu!/scores.db' "./other_games/osu"
cp -rfu 'C:/ProgramData/PopCap Games/PlantsVsZombies/pvzHE/yourdata' "./other_games/PVZ_hybrid"

# browser
# cp -rfu "C:/Users/lxl/AppData/Local/Microsoft/Edge/User Data/Default/Bookmarks" ./Browser/Bookmarks
# bash encrypt.sh

git add -A
git commit -m $(date "+%Y%m%d-%H:%M:%S")
git push origin main