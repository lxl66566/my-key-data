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
    HOME="C:/Users/lxl"
    STANDALONE="C:/standalone_software"
    LUNA="C:/game/galgame/LunaTranslator"
    
    # tai
    cp -rfu  "$STANDALONE/Tai1.5.0.5/Data" ./Tai
    cp -rfu  "$STANDALONE/Tai1.5.0.5/AppIcons" ./Tai
    
    # galgame
    # cp -rfu "$HOME/AppData/Roaming/RenPy/DDLC-1454445547" ./galgame/DDLC
    cp -rfu "G:/galgame/アンレス テルミナリア/save" "./galgame/アンレス テルミナリア"
    cp -rfu "$HOME/AppData/Roaming/枕/サクラノ刻" "./galgame"
    
    # config
    # windows
    cp -rfu "$HOME/.bashrc" ./config/.bashrc
    cp -rfu "$HOME/.gitconfig" ./config/.gitconfig
    # vscode
    cp -rfu "$HOME/AppData/Roaming/Code/User/settings.json" ./config/vscode
    # Ditto
    cp -rfu "$STANDALONE/Ditto/Ditto.Settings" ./config/ditto/Ditto.Settings
    # v2rayN
    cp -rfu "$STANDALONE/v2rayN/guiConfigs" ./config/v2rayN
    # wsl
    cp -rfu "$HOME/.wslconfig" ./config/.wslconfig
    # uv
    cp -rfu "$HOME/.config/uv" ./config
    # mpv
    find "$HOME/scoop/apps/mpv/current/portable_config" -maxdepth 1 -mindepth 1 -exec cp -rfu {} ./config/mpv \;
    # cargo
    cp -rfu "$HOME/.cargo/config.toml" ./config/.cargo
    # tabby
    # cp -rfu "C:/scoop/apps/tabby/current/data/config.yaml" ./config/tabby
    # nushell
    cp -rfu "$HOME/AppData/Roaming/nushell/custom.nu" ./config/nushell
    # luna translator
    cp -rfu "$LUNA/userconfig" ./config/LunaTranslator
    
    # other games
    OSU_DIR="C:/game/osu"
    cp -fu "$OSU_DIR/collection.db" "./other_games/osu"
    cp -fu "$OSU_DIR/scores.db" "./other_games/osu"
    cp -fu "$OSU_DIR/osu!.lxl.cfg" "./other_games/osu"
    # cp -rfu 'C:/ProgramData/PopCap Games/PlantsVsZombies/pvzHE/yourdata' "./other_games/PVZ_hybrid"
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