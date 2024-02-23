FROM alpine:latest

# 必要なパッケージをインストール
RUN apk add --no-cache curl git bash

# Terraformのバージョンを指定
ARG TERRAFORM_VERSION="1.7.3"

# Terraformのバイナリをダウンロードしてインストール
RUN curl -LO https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
    && unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/local/bin \
    && rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip

RUN terraform init
# 作業ディレクトリを設定
WORKDIR /app

# Dockerコンテナを起動する際のデフォルトコマンド
CMD ["terraform", "version"]
