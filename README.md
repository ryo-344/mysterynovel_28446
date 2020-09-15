# README

# ミステリーレビューサイト

# 概要

## レビュー投稿機能
![レビュー投稿ページ](https://github.com/ryo-344/mysterynovel_28446/blob/master/%E3%83%9F%E3%82%B9%E3%83%86%E3%83%AA%E3%83%BC%E3%83%AC%E3%83%92%E3%82%99%E3%83%A5%E3%83%BC%E6%8A%95%E7%A8%BF.png?raw=true)

## レビュー一覧表示機能（トップページ）
![トップページ](https://github.com/ryo-344/mysterynovel_28446/blob/master/%E3%83%9F%E3%82%B9%E3%83%86%E3%83%AA%E3%83%BC%E3%83%AC%E3%83%92%E3%82%99%E3%83%A5%E3%83%BC%E3%83%88%E3%83%83%E3%83%95%E3%82%9A%E3%83%98%E3%82%9A%E3%83%BC%E3%82%B7%E3%82%99.png?raw=true)

## レビュー詳細表示機能
![レビュー詳細ページ](https://github.com/ryo-344/mysterynovel_28446/blob/master/%E3%83%9F%E3%82%B9%E3%83%86%E3%83%AA%E3%83%BC%E3%83%AC%E3%83%92%E3%82%99%E3%83%A5%E3%83%BC%E8%A9%B3%E7%B4%B0%E8%A1%A8%E7%A4%BA.png?raw=true)

## コメント投稿機能
![コメント投稿ページ](https://github.com/ryo-344/mysterynovel_28446/blob/master/%E3%83%9F%E3%82%B9%E3%83%86%E3%83%AA%E3%83%BC%E3%83%AC%E3%83%92%E3%82%99%E3%83%A5%E3%83%BC%E3%82%B3%E3%83%A1%E3%83%B3%E3%83%88%E6%A9%9F%E8%83%BD.png?raw=true)

## ジャンル表示機能
![ジャンル表示](https://github.com/ryo-344/mysterynovel_28446/blob/master/%E3%83%9F%E3%82%B9%E3%83%86%E3%83%AA%E3%83%BC%E3%83%AC%E3%83%92%E3%82%99%E3%83%A5%E3%83%BC%E3%82%B7%E3%82%99%E3%83%A3%E3%83%B3%E3%83%AB%E8%A1%A8%E7%A4%BA%E6%A9%9F%E8%83%BD.png?raw=true)

# 本番環境
URL: https://mysterynovel-28446.herokuapp.com/
basic認証 id: admin
basic認証 pass: 2222
nickname: taro
email: ttt@sample.com
password: ttttt0

# 制作背景

・小説のレビューサイトは数多くありますが、ミステリーに特化したサイトはとても少ないと感じていました。また、一口にミステリーと言っても多様なジャンルがあり、好みも人それぞれであると思っていました。

# DEMO

# 工夫したポイント
・Ajaxを用いて非同期でジャンル表示機能を実装しました
・レビュー詳細ページへのリンクを本のレビューに設定しました

# 使用技術
Ruby/Ruby on Rails/MySQL/Github/Visual Studio Code/JavaScript


# 課題・今後実装したい機能
## ジャンル別表示機能
・jsを利用して非同期で実装しようと考えています
## いいね機能
・jsを利用して非同期で実装しようと考えています


# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :reviews
- has_many :comments
- has_many :favorites

## reviews テーブル

| Column   | Type    | Options                        |
| -------- | ------  | ------------------------------ |
| title    | string  | null: false                    |
| author   | string  | null: false                    |
| genre_id | integer | null: false                    |
| content  | text    | null: false                    |
| user_id  | integer | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments
- has_many :reviews

## comments テーブル

| Column    | Type    | Options                        |
| --------- | ------- | ------------------------------ |
| sentence  | text    | null: false                    |
| user_id   | integer | null: false, foreign_key: true |
| review_id | integer | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :review

## favorites テーブル

| Column    | Type    | Options                        |
| --------- | ------- | ------------------------------ |
| user_id   | integer | null: false, foreign_key: true |
| review_id | integer | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :review
