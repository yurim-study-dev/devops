# 이미지 빌드 (RUN javac 및 rm 지시어 실행)
docker build -t ch02-03-run-image .

# 기존 컨테이너 삭제 후 새 컨테이너 백그라운드 구동
docker rm -f ch02-03-run-container
docker run -d --name ch02-03-run-container ch02-03-run-image tail -f //dev/null

# 컨테이너 쉘 접속
docker exec -it ch02-03-run-container //bin/sh

# 컨테이너 내부 쉘에서 컴파일된 자바 클래스 실행 확인
java HelloWorld