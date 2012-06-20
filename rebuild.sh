MAKEPKG_OPTS="-sc"
for module in `ls` 
do
    if [ -e $module ]
    then
        cd $module

        if [ -e PKGBUILD ]
        then
            echo "building $module..."
            makepkg $MAKEPKG_OPTS
        fi

        cd ..
    fi
done
