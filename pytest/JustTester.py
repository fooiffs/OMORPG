# 기본 경로 지정을 위해 사용
import os
# 파워쉘 사용을 위해 사용
import subprocess
import signal

is_print = False
# base_path = '"' + os.path.dirname(os.path.abspath(os.path.dirname(os.path.abspath(os.path.dirname(__file__)))))
# common_path = base_path + '\\Script\\api\\1.0.0\\common.j"'
# blizzard_path = base_path + '\\Script\\api\\1.0.0\\blizzard.j"'
# input_j_path = base_path + '\\Script\\pytest\\inputs.j"'
# helper_path = '"C:\\Program Files\\Warcraft\\JassNative Editor v2.2\\jasshelper\\vexorianjasshelper.exe"'
program_path = '"C:\\Program Files\\Warcraft\\JNLoader.exe"'
map_path = '"C:\\Program Files\\Warcraft\\New\\Breach\\OMO 240924.w3x"'

# 지도 시험
command = f".{program_path} -window -loadfile {map_path}"
if is_print: print(command)
subprocess.run(["powershell", command])

os.system('cls')
os.kill(os.getppid(), signal.SIGTERM)