# 베이스 이미지 지정
FROM eclipse-temurin:25-jre

# 빌드 시점 임시 변수 선언 (기본값: 1.0.0)
ARG APP_VERSION=1.0.0

# 주입받은 빌드 변수를 이미지 메타데이터(LABEL)로 등록
LABEL APP_VER=$APP_VERSION
LABEL APP_DESCRIPTION="Hello World App version: $APP_VERSION"