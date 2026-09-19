# EXPOSE 지정 이미지 빌드
docker build -t ch02-04-expose-image .

# 기존 컨테이너 삭제 후 백그라운드 구동
docker rm -f ch02-04-expose-container
docker run -d --name ch02-04-expose-container ch02-04-expose-image tail -f //dev/null

# 구동 중인 컨테이너 목록에서 EXPOSE 명세 포트(PORTS 항목: 80/tcp) 확인
docker ps