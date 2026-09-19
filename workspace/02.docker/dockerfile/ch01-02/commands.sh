#이미지 빌드
docker build -t ch01-02-image:latest .


# 잘못 했을 때 컨테이너 강제 삭제
docker rm -f ch01-01-container

#컨테이너 구동
docker rm -f ch01-02-container
docker run -d --name ch01-02-container -p 80:80 ch01-02-image


#컨테이너 쉘 진입
docker exec -it ch01-02-container //bin/sh

# 컨테이너 내부에서 실행
# nginx 메인 설정 파일 확인
cat /etc/nginx/nginx.conf

# nginx 웹 설정 파일 확인
cat /etc/nginx/conf.d/default.conf

# 기본 html 파일 확인
ls /usr/share/nginx/html
cat /usr/share/nginx/html/index.html