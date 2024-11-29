#!/bin/bash
#第一个参数传入sdkPath路径（不带/）
workPath=$1

if [ -e "$workPath" ]; then
    basepath=$workPath
    basepath_dir=$(dirname "${basepath}")
else
    basepath=$(dirname $(readlink -f "$0"))
    basepath_dir=$(dirname "${basepath}")
fi

qt5_dir="$basepath/apps/Qt5"
if [ -e "$qt5_dir" ]; then
    echo "$qt5_dir"
else
    echo "!!! you should put shell file to OSGeo4W64 root !!!"
    exit 1
fi

echo "basepath=$basepath"
#echo "basepath_dir=$basepath_dir"

cd $basepath

qt_deps=$(cat << EOF
freetype.dll
icudt.dll
icudt67.dll
icuin.dll
icuin67.dll
icuio.dll
icuio67.dll
icutest.dll
icutest67.dll
icutu.dll
icutu67.dll
icuuc.dll
icuuc67.dll
libcrypto-3-x64.dll
libpng16.dll
libssl-3-x64.dll
zlib.dll
zstd.dll
EOF
)

# 设置内部字段分隔符为换行符，这样可以按行分割字符串内容
IFS=$'\n'
# 使用while循环处理字符串中的每一行（在这里就是每个单词）
while read dep; do
    target_file="$qt5_dir/bin/$dep"
    dep_file="$basepath/bin/$dep"
    if [ -e "$dep_file" ]; then
        cp "$dep_file" "$target_file"
        echo "copy dep to $target_file"
    else
        echo "not found $dep_file"
    fi
done <<< "$qt_deps"

echo "done"