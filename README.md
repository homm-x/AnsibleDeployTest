# ・Ansibleでサーバ構築自動化＋DockerによるAnsibleのテスト環境を構築

このプロジェクトの目的
* Ansible用いて対象サーバに「LAPP（Linux、Apache、PostgreSQL、PHP）＋Python」環境構築
* ※動作確認済みですが、学んでいた当時のため環境は少し古いです。
* 2022年10月25日現在read.me及び実行コマンド等再検証中です。

# Features

DockerはAnsibleのテスト環境を用意するために使用
* Ansible用いて複数台にサーバ構築を行う。
* Dockerを用いてテスト用のコンテナ環境を作成する。

# Note

* ※Ansibleで複数台に環境を構築することを目的としています。そのため、本来コンテナ環境へ【docker exec  -it コンテナID bash】コマンドでアクセスできますがSSHでのアクセスを可能としています。
* IP制限等、セキュリティ設定は手動で行う必要有

# Requirement

必要環境
* DockerVersion 3~   最終動作確認Version:20.10.20
* Ansible     最終動作確認(検証中)Version:Python 3.10.7 Ansible 2.13.5

# Installation
「LAPP（Linux、Apache、PostgreSQL、PHP）＋Python」環境Version
* Centos 7.5
* Apache 2.4
* php 71   
* postgresql 10
* (pyenv)python 3.6.5

その他インストールについては下記を参照

* Docker(プラグイン等)
```bash
 AnsibleDeployTest/dep_test_docker/docker-file/common/Dockerfile
```
* Ansible(ライブラリ等)
```bash
 AnsibleDeployTest/deploy.yml
 AnsibleDeployTest/roles/(例python)/tasks/main.yml
 AnsibleDeployTest/roles/(例python)/tasks/install.yml
 AnsibleDeployTest/roles/(例python)/vars/main.yml
```

# Usage

Docker-Compose実行
* 追記中
```bash
git clone https://github.com/homm-x/AnsibleDeployTest.git
cd dep_test_docker
docker-compose up --build
```


Ansible実行
* 追記中
```bash
ansible-playbook -i inventory/host.ini deploy.yml
```
