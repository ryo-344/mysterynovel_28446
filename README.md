# README

# ミステリーレビューサイト

# 概要

## レビュー投稿機能

## レビュー一覧表示機能（トップページ）
![トップページ](https://github.com/ryo-344/mysterynovel_28446/blob/master/%E3%83%9F%E3%82%B9%E3%83%86%E3%83%AA%E3%83%BC%E3%83%AC%E3%83%92%E3%82%99%E3%83%A5%E3%83%BC%E3%83%88%E3%83%83%E3%83%95%E3%82%9A%E3%83%98%E3%82%9A%E3%83%BC%E3%82%B7%E3%82%99.png?raw=true)

## レビュー詳細表示機能

## コメント投稿機能

## ジャンル表示機能

# 本番環境

# 制作背景

・小説のレビューサイトは数多くありますが、ミステリーに特化したサイトはとても少ないと感じていました。また、一口にミステリーと言っても多様なジャンルがあり、好みも人それぞれであると思っていました。

# DEMO

# 工夫したポイント

# 使用技術

# 課題・今後実装したい機能
## ジャンル別表示機能
## いいね機能


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
