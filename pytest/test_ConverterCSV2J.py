import csv
# csv 파일 경로
csv_file_path = 'OMO CSV.csv'
save_type_now = 'SkillData'

# csv 파일 읽어오기
with open(csv_file_path, 'r', encoding='utf-8') as source:
    reader = csv.reader(source)
    next(reader) # 첫 줄 skip

    # 각 라인마다 딕셔너리 생성 후 리스트에 추가
    data = []
    for line in reader:
        d = 'call SaveInteger(udg_hash, EResource.' + save_type_now + ', ' + line[0] + ', ' + line[7]+')'
        data.append(d)

print(data)
source.close() # 파일 닫기

# txt 파일로 저장할 경로
txt_file_path = save_type_now+'.j'

# txt 파일 쓰기
with open(txt_file_path, 'w', encoding='utf-8') as result:
    for child in data:
        result.write(child+'\n')

result.close() # 파일 닫기