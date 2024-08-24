read -n 1 -p "Are you sure to clean git and push force? (y/n) " answer
case ${answer:0:1} in
    y|Y )
        rm -rf .git
        git init
        git remote add origin git@github.com:lxl66566/my-key-data.git
        git add -A
        git commit -m "clean git"
        git push origin main -f &
        git push origin2 main -f &
        wait
        exec /bin/bash
    ;;
    * )
        echo "do nothing"
        exit 1
    ;;
esac