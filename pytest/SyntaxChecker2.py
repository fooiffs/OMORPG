# 기본 경로 지정을 위해 사용
import os
# 파워쉘 사용을 위해 사용
import subprocess
# 시간 대기를 위해 사용
import time

# 실행될 때, 디버그용 메시지를 표시합니다. 오류가 나면 하나하나 찾아보기 위함.
is_print = False

# 지도 시험 (F9) 유무 - 그냥 저장만 하고 컴파일 오류만 확인하려면 False로 두세요.
is_map_test = True

# 컴파일 시간 후 대기 시간(초) - 각자 맵에 맞춰서 적당히 처리하세요.
wait_time = 3

# 메인 경로 - 파이썬 파일 위치를 기반으로, 상상위 경로를 지정합니다. 직접 지정해도 됩니다.
base_path = '"' + os.path.dirname(os.path.abspath(os.path.dirname(os.path.abspath(os.path.dirname(__file__)))))
if is_print: print(base_path)

# 맵 이름 in 메인 경로 - 특징에 따라, 끝에 쌍따옴표, 외따옴표 처리해주세요 → "'
map_path = base_path + '\\OMO 240810.w3x"'

# common, blizzard 경로 (메인 경로 외일 경우 "전체 경로" 작성) 
common_path = base_path + '\\Script\\api\\1.0.0\\common.j"'
blizzard_path = base_path + '\\Script\\api\\1.0.0\\blizzard.j"'

# Jass helper 경로 : 본인은 Vexorian Jass Helper 사용 (보통 JN Editor에 맵 저장할때 쓰는거)
helper_path = '"C:\\Program Files\\Warcraft\\JassNative Editor v2.2\\jasshelper\\vexorianjasshelper.exe"'

# 지도 시험에 사용할 프로그램 경로
program_path = '"C:\\Program Files\\Warcraft\\JNLoader.exe"'

# 옵션 (참고/아는거만 쓰세요: --debug --nopreprocessor --nooptimize --scriptonly --warcity --zinconly --macromode --about --showerrors clijasshelper.exe)
# 보통은 --debug만 추가/제거하면 될거에요.
addtional_option = '--debug --nooptimize'


# 오류 없는 J파일 - 문법 비교용
input_j_path = base_path + '\\Script\\pytest\\inputs.j"'

### 이하 자동 실행 ###
if ( is_map_test ):
    # 파워쉘 이용해 문법 체크 실행 (명령어 지정, 명령어 표시, 실제 명령 실행 in 파워쉘)
    command = f".{helper_path} {addtional_option} {common_path} {blizzard_path} {input_j_path} {map_path}"
    if is_print: print("map - : " + command)
    subprocess.run(["powershell", command])

    # 시간 대기
    time.sleep(wait_time)

    # 지도 시험 (F9 - On 일 경우에만)
    command = f".{program_path} -window -loadfile {map_path}"
    if is_print: print(command)
    subprocess.run(["powershell", command])

else:
    output_j_path = base_path + '\\Script\\logs\\outputs.j"'

    # 파워쉘 이용해 문법 체크 실행 (명령어 지정, 명령어 표시, 실제 명령 실행 in 파워쉘)
    command = f".{helper_path} {addtional_option} --scriptonly {common_path} {blizzard_path} {input_j_path} {output_j_path}"
    if is_print: print(command)
    subprocess.run(["powershell", command])

# 생성된 임시 폴더 삭제 - 경로는 바뀔 수 있음.
time.sleep(wait_time)
command = 'Remove-Item –path ' + base_path + '\\Script\\backups\" -Recurse'
if is_print: print(command)
subprocess.run(["powershell", command])

command = 'Remove-Item –path ' + base_path + '\\Script\\logs\" -Recurse'
if is_print: print(command)
subprocess.run(["powershell", command])