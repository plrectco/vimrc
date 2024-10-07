#! /bin/sh
#
# gen_myplugin_list.sh
# Copyright (C) 2024 xinyueou <xinyueou@Xinyues-Air.attlocal.net>
#
# Distributed under terms of the MIT license.
#

touch mypluginList

output=$(pwd)/mypluginList

for dir in ~/.vim_runtime/my_plugins/*; do
    echo $dir
    if [ -d $dir ]; then
        pushd $dir >> /dev/null
        git config --get remote.origin.url >> $output
        popd >> /dev/null
    fi
done
