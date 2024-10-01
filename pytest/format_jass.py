import sys
import re
def format_jass_code(file_path):
    # print("is:" + file_path)

    with open(file_path, 'r', encoding='UTF8') as file:
        lines = file.readlines()

    formatted_lines = []
    for line in lines:
        formatted_line = re.sub(r'if\s*\(\s*(.*?)\s*\)\s*then', r'if ( \1 ) then', line)
        formatted_line = re.sub(r'\s{0,}\n$', '\n', formatted_line)
        formatted_lines.append(formatted_line)

    with open(file_path, 'w', encoding='UTF8') as file:
        file.writelines(formatted_lines)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python format_jass.py <file_path>")
    else:
        format_jass_code(sys.argv[1])
        sys.exit()