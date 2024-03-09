# README

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

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
