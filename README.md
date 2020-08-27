# README

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
