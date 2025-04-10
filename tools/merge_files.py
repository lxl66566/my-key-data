#!/usr/bin/env python3
# 合并多个文件，并按行去重

from pathlib import Path
from typing import Iterable
import sys

def merge_and_deduplicate_files(file_list: Iterable[Path], output_file: Path):
    # 创建一个集合来存储去重后的行
    unique_lines = set()

    # 遍历文件列表
    for file_path in file_list:
        # 确保文件存在
        if not file_path.exists():
            print(f"文件 {file_path} 不存在，跳过。")
            continue

        # 读取文件内容
        lines = file_path.read_text("utf-8").splitlines()
        unique_lines.update(lines)

    # 将去重后的行写入输出文件
    sorted_lines = sorted(unique_lines)  # 可选：按字母顺序排序
    output_file_path = Path(output_file)
    output_file_path.write_text("\n".join(sorted_lines) + "\n", "utf-8")

    print(f"合并并去重完成，结果已保存到 {output_file}。")

# 示例文件列表
file_list = sys.argv[1:]
output_file = "merged_output.txt"

# 调用函数进行合并和去重
merge_and_deduplicate_files(map(Path, file_list), Path(output_file))