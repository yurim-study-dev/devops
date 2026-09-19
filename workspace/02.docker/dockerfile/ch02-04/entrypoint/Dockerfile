# 1. JDK 베이스 이미지 지정 및 작업 디렉터리 생성
FROM eclipse-temurin:25-jdk-alpine
WORKDIR /app

# 2. 자바 소스코드 파일 복사
COPY *.java .

# 3. RUN 지시어로 자바 소스코드 직접 컴파일 및 소스 파일 제거
RUN javac *.java
RUN rm *.java

# 4. 런타임에 항상 고정으로 실행할 메인 명령어 지정
ENTRYPOINT ["java", "HelloWorld", "Java"]