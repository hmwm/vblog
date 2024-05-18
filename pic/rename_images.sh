#!/bin/bash

# 设置初始计数器
counter=1

# 遍历当前目录下的所有 jpg 和 png 文件
for file in *.jpg *.png; do
  # 提取文件的扩展名
  extension="${file##*.}"
  # 生成新的文件名
  new_name="image${counter}.${extension}"
  # 重命名文件
  mv "$file" "$new_name"
  # 计数器加一
  ((counter++))
done

