# 1. 베이스 이미지 지정 (Alpine Linux 3.24.1)
FROM alpine:3.24.1

# 2. 컨테이너 내부 작업 디렉터리 설정
WORKDIR /app

# 3. 런타임 환경 변수 선언
ENV APP_ENV=production

# 4. 웹 서버(Nginx) 패키지 설치 및 파일 복사(https://pkgs.alpinelinux.org/packages 에서 패키지 버전 확인)
RUN apk update && apk add --no-cache nginx=1.30.4-r1
COPY default.conf /etc/nginx/http.d/default.conf
COPY index.html /usr/share/nginx/html/index.html

# 5. 수신 포트 명세 및 포그라운드 구동 명령 지정
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]