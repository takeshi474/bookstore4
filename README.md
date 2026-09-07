# Bookstore

Java / Spring Bootで作成した書籍管理Webアプリです。

Udemyの講座を参考にして作成したアプリをベースに、自身で機能追加やUIの改善、修正を行っています。

https://www.udemy.com/course/hello-java/?couponCode=26BBPPLO2MXTRMT

書籍の登録・編集・削除に加えて、キーワード検索、ソート、ページネーション、表示件数変更などの機能を実装しています。

実際にRenderへデプロイし、PostgreSQLを使用した本番環境で動作させています。

## デモ

https://bookstore4-qmol.onrender.com/book/list

※Renderの仕様により、しばらくアクセスがない場合は起動まで時間がかかることがあります。

## 使用技術

* Java
* Spring Boot
* Spring Data JPA
* Thymeleaf
* PostgreSQL
* Bootstrap
* Git / GitHub
* Render

## 主な機能

* 書籍の登録
* 書籍の編集
* 書籍の削除
* 書籍一覧表示
* キーワード検索
* 価格・発行日・IDによるソート
* ページネーション
* 表示件数変更
* 複数メディアタイプの登録
* 入力値バリデーション

## データベース

PostgreSQLを使用しています。

書籍情報と、書籍が持つ複数のメディアタイプを分けて管理しています。

* `book`

  * 書籍ID
  * タイトル
  * 発行日
  * 価格
* `book_media_type`

  * 書籍ID
  * メディアタイプ

メディアタイプには「印刷本」「電子書籍」「オーディオブック」を設定できます。

## 工夫した点

### 検索・ソート・ページネーション

Spring Data JPAの`Pageable`を利用し、検索条件やソート条件を保持したままページ移動できるようにしています。

### 複数メディアタイプ

1冊の書籍が複数のメディアタイプを持てるよう、`@ElementCollection`を利用して管理しています。

### バリデーション

タイトル、発行日、価格、メディアタイプについて入力値のバリデーションを実装しています。

### 本番環境へのデプロイ

Renderへデプロイし、ローカル環境だけでなくインターネット上から実際に操作できる環境を構築しています。

データベースにはPostgreSQLを使用し、データベースの接続情報は環境変数から取得する構成にしています。

## GitHub

https://github.com/takeshi474/bookstore4
