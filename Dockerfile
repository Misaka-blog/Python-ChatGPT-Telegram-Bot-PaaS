FROM nginx:latest
EXPOSE 80
WORKDIR /app
USER root

COPY nginx.conf /etc/nginx/nginx.conf
COPY main.py ./
COPY requirements.txt ./
COPY entrypoint.sh ./

RUN apt-get update && \
    apt-get install -y wget curl unzip python3-pip && \
    chmod -v 755 entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]