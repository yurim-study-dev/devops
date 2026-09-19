# 베이스 이미지 지정
FROM eclipse-temurin:25-jre

# 빌드 시점 임시 변수 선언 (기본값: 1.0.0)
ARG APP_VERSION=1.0.0

# 이미지 메타데이터(LABEL) 명세
LABEL APP_VER=$APP_VERSION
LABEL APP_DESCRIPTION="Hello World App version: $APP_VERSION"

# 런타임 환경 변수 기본값 선언 (PORT=80)
ENV PORT=80