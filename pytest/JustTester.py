# 기본 경로 지정을 위해 사용
import os
# 파워쉘 사용을 위해 사용
import subprocess

is_print = False
program_path = '"C:\\Program Files\\Warcraft\\JNLoader.exe"'
map_path = '"C:\\Program Files\\Warcraft\\New\\Breach\\OMO 240924.w3x"'

# 지도 시험
command = f".{program_path} -window -loadfile {map_path}"
if is_print: print(command)
subprocess.run(["powershell", command])