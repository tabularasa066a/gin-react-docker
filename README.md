# Gin + React + +mysql + docker
## コンテナ構成
APIサーバ(`api`): Gin(go), port:8080
DB(`mysql`): MySQL, GUI管理用にphpmyadminを使用, port: 3306
フロント(`frontend`): React, port:3000

## ブラウザアクセス
http://192.168.33.10:3000など

## docker commands
- コンテナ群をビルドする
`sudo docker-compose build`
- コンテナ群を立ち上げる
`sudo docker-compose up`
- コンテナ群を削除する
`sudo docker-compose down --rmi all --volumes --remove-orphans`
- コンテナのログを見る
`sudo docker-compose logs frontend`

## トラブル対応
- go: `github.com/gin-gonic/gin`のimportに際し`cannot find package`

## 参考
https://selfnote.work/20200506/programming/golang-with-gin/
