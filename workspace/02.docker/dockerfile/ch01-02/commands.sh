#이미지 빌드
docker build -t ch01-02-image:latest .


# 잘못햇을떄 삭제 docker rm -f ch01-01-container

#컨테이너 구동
docker run -d --name ch01-02-container -p 80:80 ch01-01-image




#컨테이너 쉘 진입
docker exec -it ch01-02-container //bin/sh