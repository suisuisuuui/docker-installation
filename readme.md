# Docker と Docker Compose のインストール

## 注意事項

- 本セットアップの手順は、個人 PC の開発用環境等で使うことを想定しています
- 本スクリプトを実施したことで不具合が起きても責任は取れません

## 前提事項

- OS : Rocky Linux 8
- 実行ユーザ : root

## インストール手順

Git をインストールする

```
# dnf -y install git
```

本リポジトリを git clone する

```
# git clone https://github.com/suisuisuuui/docker-installation.git
```

ディレクトリを移動し、ファイルの実行権限を変更する

```
# cd docker-installation
# chmod +x docker-and-docker-compose-install.sh
```

- Docker Compose のバージョンを指定する

```
# vi docker-and-docker-compose-install.sh
下記の行でバージョンを指定する
DOCKER_COMPOSE_VERSION=2.3.3
```

スクリプトを実行する

```
# ./docker-and-docker-compose-install.sh
```

