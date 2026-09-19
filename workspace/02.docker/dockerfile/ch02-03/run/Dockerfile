# JDK 베이스 이미지 지정 및 작업 디렉터리 생성
FROM eclipse-temurin:25-jdk-alpine
WORKDIR /app

ENV PORT=9999

# 자바 소스코드 파일 복사
COPY *.java .

# RUN 지시어로 자바 소스코드 직접 컴파일
RUN javac *.java

# 자바 소스코드 삭제
RUN rm *.java