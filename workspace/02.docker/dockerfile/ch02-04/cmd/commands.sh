docker build -t ch02-04-cmd-image .

# 인자 없이 기본 구동 (CMD 기본 명령어 실행: echo hello)
docker run --rm ch02-04-cmd-image
# 출력 결과: hello

# 인자를 주어 구동 (기존 CMD가 덮어씌워지고 echo world 실행)
docker run --rm ch02-04-cmd-image echo world
# 출력 결과: world