#!/usr/bin/env bash
# 精简仓库时请不要直接删除！有非 cp 的文件在仓库内！

set -euxo pipefail

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    MSYS_NT*)   machine=Git;;
    *)          machine="UNKNOWN:${unameOut}"
esac
echo "running on ${machine}"

windows_bk(){
    # tai
    cp -rfu  "C:/standalone_software/Tai1.5.0.4/Data" ./Tai
    cp -rfu  "C:/standalone_software/Tai1.5.0.4/AppIcons" ./Tai
    
    # galgame
    # cp -rfu  C:/Users/lxl/AppData/Roaming/RenPy/DDLC-1454445547 ./galgame/DDLC
    cp -rfu "G:/galgame/アンレス テルミナリア/save" "./galgame/アンレス テルミナリア"
    cp -rfu "C:/Users/lxl/Documents/ESCUDE/Sennagi" "./galgame"
    cp -rfu "G:/galgame/五彩斑斓的世界 HD 4K重置版（いろとりどりのセカイ HD）/save" "./galgame/五彩斑斓的世界"
    cp -rfu "C:/Users/lxl/AppData/Roaming/枕/サクラノ刻" "./galgame"
    
    # config
    # windows
    cp -rfu "C:/Users/lxl/.bashrc" ./config/.bashrc
    cp -rfu "C:/Users/lxl/.gitconfig" ./config/.gitconfig
    # vscode
    cp -rfu "C:/Users/lxl/AppData/Roaming/Code/User/settings.json" ./config/vscode
    # Ditto
    cp -rfu "C:/standalone_software/Ditto/Ditto.Settings" ./config/ditto/Ditto.Settings
    # v2rayN
    cp -rfu "C:/standalone_software/v2rayN/guiConfigs" ./config/v2rayN
    # wsl
    # cp -rfu "C:/Users/lxl/.wslconfig" ./config/.wslconfig
    # mpv
    find "C:/Users/lxl/scoop/apps/mpv/current/portable_config" -maxdepth 1 -mindepth 1 -exec cp -rfu {} ./config/mpv \;
    # cargo
    cp -rfu "C:/Users/lxl/.cargo/config.toml" ./config/.cargo
    # tabby
    # cp -rfu "C:/scoop/apps/tabby/current/data/config.yaml" ./config/tabby
    # nushell
    cp -rfu "C:/Users/lxl/AppData/Roaming/nushell/custom.nu" ./config/nushell
    # luna translator
    cp -rfu "G:/galgame/LunaTranslator/userconfig" ./config/LunaTranslator
    
    # other games
    cp -fu 'C:/game/osu/collection.db' "./other_games/osu"
    cp -fu 'C:/game/osu/scores.db' "./other_games/osu"
    # cp -rfu 'C:/ProgramData/PopCap Games/PlantsVsZombies/pvzHE/yourdata' "./other_games/PVZ_hybrid"
    
    # browser
    # cp -rfu "C:/Users/lxl/AppData/Local/Microsoft/Edge/User Data/Default/Bookmarks" ./Browser/Bookmarks
    
}

case "$machine" in
    Git|MinGw|Cygwin)
        windows_bk
    ;;
    *)
        # 如果 machine 不是上述任何一个，则什么也不做或者执行其他操作
    ;;
esac


git-se e
git commit -a --allow-empty-message -m "$*"
git push origin main