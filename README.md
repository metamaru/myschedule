# アプリケーション名
myschedule

# アプリケーション概要
自分に必要な項目を一つのスケジュールでまとめて管理できることができる

# URL


# テスト用アカウント
- Basic認証パスワード :1231
- Basic認証 :admin
- メールアドレス :test@test
- パスワード :123456a

# 利用法方法
## 目標投稿
1. トップページ(ユーザーログイン画面)のヘッダーからユーザー新規登録を行う
1. 左上の+ボタンから、投稿内容(タイトル・日付・時間or終日・カテゴリー必須)を入力し投稿する
1. 予定が本日から1週間以内であれば一覧に表示される

## 予定の確認や編集
1. カレンダー部分のタイトルから詳細画面へ
1. 詳細画面から編集可能
1. 一覧表示の詳細・編集からも操作可能

# アプリケーションを作成した背景
用途ごとに複数のスケジュールアプリを使用していたが確認が大変で非効率と感じていた。自分なりの必要な項目のみで一括管理出来たら良いと思った

# 実装予定の機能
カテゴリー毎に一覧表示機能を追加予定

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/75e300ee8d5598864393d174262dc979.png)](https://gyazo.com/75e300ee8d5598864393d174262dc979)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/c528cf7434c7c42030211e664d04f52b.png)](https://gyazo.com/c528cf7434c7c42030211e664d04f52b)

# テーブル設計
## users テーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |
### Association
- has_many :events

## events テーブル
| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| user               | references | null: false, foreign_key: true|
| title              | string     | null: false |
| comment            | text       |             |
| location           | string     |             |
| start_time         | datetime   |             |
| end_time           | datetime   |             |
| all_day            | boolean    |             |
| category_id        | references | null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :category

## categories テーブル
| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| event              | references | null: false, foreign_key: true|
| work               | string     | null: false |
| friend             | string     | null: false |
| themepark          | string     | null: false |
| hobby              | string     | null: false |
| other              | string     | null: false |
| period             | date       | null: false |
### Association
- has_one :event

# 開発環境
- Ruby 3.2.0
- Rubu on Rails 7.0.0
- MYSQL
- GitHub
- Render

# 工夫したポイント
- 当日から1週間以内の予定は分かりやすいよう一覧表示
- 女性専用管理アプリと通常のスケジュール管理を一括で管理したかったので、予定を登録すると次の予定日が詳細画面で確認できるよう表示
