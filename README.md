# README

# ミステリーレビューサイト

# 概要

## レビュー投稿機能

## レビュー一覧表示機能（トップページ）

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
