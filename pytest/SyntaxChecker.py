# 오류 구문을 체크합니다.
# 1. J파일을 저장합니다.
# 2. common.j, blizzard.j에 맞춰 문법을 검사합니다.
# 3. 맵을 불러와 지도-시험을 진행합니다. (is_map_test를 True 설정시)
# 4. 오류가 있을 시, 오류를 출력합니다. (혹은 is_print를 True 설정시)

import os
import subprocess
import time

# print 유무
is_print = False

# 메인 경로
base_path = '"' + os.path.dirname(os.path.abspath(os.path.dirname(os.path.abspath(os.path.dirname(__file__)))))
if is_print: print(base_path)

# 맵 - 디버그 체크 유무, 시험 유무, 경로
is_debug = True
is_map_test = True
map_path = base_path + '\\OMO 240810.w3x"'
if is_print: print(map_path)

# helper 경로
helper_path = '"C:\\Program Files\\Warcraft\\JassNative Editor v2.2\\jasshelper\\vexorianjasshelper.exe"'
if is_print: print(helper_path)

# j 파일 경로 - 최근꺼 아무거나
j_path = base_path + '\\Script\\pytest\\11.j"'
# j_path = base_path + '\\Script\\GitAdder.j"'
if is_print: print(j_path)

# common, blizzard 경로
# common_path = '\"C:\\Program Files\\Warcraft\\JassNative Editor v2.2\\jasshelper\\logs\\common.j\"'
common_path = base_path + '\\Script\\api\\1.0.0\\common.j"'
# blizzard_path = '\"C:\\Program Files\\Warcraft\\JassNative Editor v2.2\\jasshelper\\logs\\Blizzard.j\"'
blizzard_path = base_path + '\\Script\\api\\1.0.0\\blizzard.j"'
if is_print:
    print(common_path)
    print(blizzard_path)

if is_debug:
    command = f".{helper_path} --debug {common_path} {blizzard_path} {j_path} {map_path}"
else:
    command = f".{helper_path} {common_path} {blizzard_path} {j_path} {map_path}"

if is_print: print(command)
subprocess.run(["powershell", command])

if ( is_map_test ):
    time.sleep(5)
    
    # 프로그램 경로
    program_path = '"C:\\Program Files\\Warcraft\\JNLoader.exe"'
    if is_print: print(program_path)

    command = f".{program_path} -window -loadfile {map_path}"
    if is_print: print(command)

    subprocess.run(["powershell", command])