FROM n8nio/n8n:latest

USER root
ENV TZ=Asia/Seoul
USER node

CMD ["n8n"]
