# --build-arg 옵션으로 빌드 변수(APP_VERSION=2.0.0)를 전달하여 이미지 빌드
cd ../ch02-03/arg
docker build --build-arg APP_VERSION=2.0.0 -t ch02-03-arg-image .

# 기존 컨테이너 삭제 후 새 컨테이너 구동
docker rm -f ch02-03-arg-container
docker run -d --name ch02-03-arg-container ch02-03-arg-image

# 주입된 빌드 변수가 LABEL 메타데이터에 전달된 결과 확인
docker inspect ch02-03-arg-container