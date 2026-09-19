# 1. FROM 지시어 기반 단독 빌드
cd ../ch02-01
docker build -t ch02-01-from-image .

#빌드히스토리 확인
docker history ch02-01-from-image


#빌드한 이미지로 컨테이너 구동(컨테이너가 중지되지 않도록 추가 명령 지정)
docker run -d --name ch02-01-from-container ch02-01-from-image tail -f //dev/null

#컨테이너 쉘 접속
docker exec -it ch02-01-from-container //bin/sh




# 2. LABEL 명세 이미지 빌드
cd ../ch02-01
docker build -t ch02-01-label-image .

# 빌드 히스토리 확인
docker history ch02-01-label-image

# 빌드한 이미지로 컨테이너 구동 (컨테이너가 중지되지 않도록 추가 명령 지정)
docker rm -f ch02-01-label-container
docker run -d --name ch02-01-label-container ch02-01-label-image tail -f //dev/null

#이미지 상세 정보 확인
docker inspect ch02-01-label-image

# 전체 LABEL 메타데이터 정보 검증 (JSON 포맷 출력)
docker inspect --format='{{json .Config.Labels}}' ch02-01-label-image
# 출력 결과: {"description":"Spring Board Nginx Web Server Image","environment":"production","maintainer":"kilyong <kilyong@example.com>","version":"1.0.0"}

# 특정 LABEL key 값 단독 추출 검증 (점 표기법 방식)
docker inspect --format='{{.Config.Labels.version}}' ch02-01-label-image
# 출력 결과: 1.0.0

# 특정 LABEL key 값 단독 추출 검증 (index 함수 방식)
docker inspect --format='{{index .Config.Labels "environment"}}' ch02-01-label-image
# 출력 결과: production

# 특정 LABEL Key=Value 완전 일치 기반 이미지 필터링 검색
docker image ls --filter "label=environment=production"

# 특정 LABEL Key 유무 기반 컨테이너 필터링 검색 (Key 이름만 지정)
docker ps -a --filter "label=maintainer"

# 특정 LABEL Key=Value 완전 일치 기반 컨테이너 필터링 검색
docker ps -a --filter "label=environment=production"


# 3. WORKDIR 지정 이미지 빌드
docker build -t ch02-01-workdir-image .

# 컨테이너 구동
docker run -d --name ch02-01-workdir-container ch02-01-workdir-image tail -f //dev/null

# 컨테이너 쉘 접속
docker exec -it ch02-01-workdir-container //bin/sh

# 작업 디렉터리 확인
pwd
# 출력 결과: /app