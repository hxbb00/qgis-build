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

qgis_ltr_dir="$basepath/apps/qgis-ltr"
if [ -e "$qgis_ltr_dir" ]; then
    echo "$qgis_ltr_dir"
else
    echo "!!! you should put shell file to OSGeo4W64 root !!!"
    exit 1
fi

echo "qgis_ltr_dir=$qgis_ltr_dir"
#echo "basepath_dir=$basepath_dir"

cd $qgis_ltr_dir

# 创建一个数组来存储文件路径
file_array=()
# 使用find命令查找所有.txt文件，并将结果存入数组
while IFS= read -r -d '' file; do
    file_array+=("$file")
done < <(find $qgis_ltr_dir -type f -name "*.dll" -print0)
# 打印数组中的文件路径
for file in "${file_array[@]}"; do
    # 使用%操作符去掉后缀名，获取文件名部分（不含路径）
    filename=${file##*/}
    # 再使用%操作符去掉后缀
    base_filename=${filename%.*}
    target_file="${file%.*}.pdb"
    pdb_filename="$qgis_ltr_dir/pdb/$base_filename.pdb"
    if [ -e "$pdb_filename" ]; then
        cp "$pdb_filename" "$target_file"
        echo "copy pdb to $target_file"
    else
        echo "no pdb for $file"
    fi
done

echo "done"