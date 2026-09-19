# 이미지 빌드
docker build -t ch02-04-entrypoint-image .

# 인자 없이 기본 구동 (ENTRYPOINT 기본 인자 전달)
docker run --rm ch02-04-entrypoint-image
# 출력 결과: Hello Java

# 추가 인자("World")를 전달하여 구동 (ENTRYPOINT 뒤에 매개변수로 결합됨)
docker run --rm ch02-04-entrypoint-image World
# 출력 결과: Hello Java World