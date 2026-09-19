# 이미지 빌드
docker build --build-arg APP_VERSION=3.0.0 -t ch02-03-env-image .

# 기존 컨테이너 삭제 및 기본 ENV 환경 변수(PORT=80)로 구동
docker rm -f ch02-03-env-container
docker run -d --name ch02-03-env-container ch02-03-env-image tail -f //dev/null

# 컨테이너 쉘 접속
docker exec -it ch02-03-env-container //bin/sh

# 컨테이너 내부 쉘에서 환경 변수 확인
printenv PORT
# 출력 결과: 80

# 기존 컨테이너 삭제 및 -e 옵션으로 런타임 환경 변수(PORT=8080) 오버라이드 구동
docker rm -f ch02-03-env-container
docker run -d -e PORT=8080 --name ch02-03-env-container ch02-03-env-image tail -f //dev/null

# 컨테이너 쉘 접속
docker exec -it ch02-03-env-container //bin/sh

# 컨테이너 내부 쉘에서 환경 변수 오버라이드 결과 확인
printenv $PORT
# 출력 결과: 8080