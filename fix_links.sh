#!/bin/bash

# 列出所有HTML文件
html_files=$(find . -name "*.html")

# 遍历每个HTML文件并修复链接
for file in $html_files; do
  echo "修复文件: $file"
  
  # 将导航链接从绝对路径修改为相对路径
  sed -i '' 's|href="/|href="|g' "$file"
  
  # 修复首页链接
  sed -i '' 's|href="""|href="index.html"|g' "$file"
  
  # 修复文件名不匹配的链接
  sed -i '' 's|href="ai-joint-design.html"|href="ai-center.html"|g' "$file"
  sed -i '' 's|href="insurance.html"|href="insurance-platform.html"|g' "$file"
  sed -i '' 's|href="talent.html"|href="talent-platform.html"|g' "$file"
  sed -i '' 's|href="innovation.html"|href="tech-innovation.html"|g' "$file"
  sed -i '' 's|href="patent.html"|href="patent-platform.html"|g' "$file"
done

echo "所有链接修复完成!" 