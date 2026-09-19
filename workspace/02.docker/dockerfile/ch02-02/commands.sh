# 이미지 빌드
cd ../ch02-02
docker build -t ch02-02-copy-image .

# 컨테이너 구동
docker rm -f ch02-02-copy-container
docker run -d -p 80:80 --name ch02-02-copy-container ch02-02-copy-image