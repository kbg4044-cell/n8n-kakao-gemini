FROM n8nio/n8n:latest

# 타임존 설정 (한국 시간)
USER root
RUN apk add --no-cache tzdata
ENV TZ=Asia/Seoul

# n8n 사용자로 전환
USER node

# [핵심 수정] n8n 공식 이미지는 이미 ENTRYPOINT가 설정되어 있음
# "n8n" 명령어가 아니라 "start" 인자만 전달해야 함
CMD ["start"]
