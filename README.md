
# README

## title
スキルアッパー
## Overview
自己のスキルを視覚化できるアプリケーション。
自分のスキルを視覚化させて表示できる機能にスラックの機能が付随するようなイメージ。
基本機能
・スキルアップ機能 - 何時間・どのくらい集中したか・新しい技術を学んだか等を選択し、経験値が加算され、一定経験値でレベルが上がる。
・バディ機能 - 同じスキル同士でマッチングでき、お互いの活動内容を報告したり、情報交換を行うことができる。

# 使用技術
・Ruby
・Ruby on Rails
・My SQL
・RSpec

# AWS構造

# 機能、非機能一覧（gem）

# テスト


# テーブル設計

## usersテーブル


| Column     |  Type   |  Options     |
| --------   |  ------ |  ----------- |
| nickname   |  string |  null: false |
| email      |  string |  null: false, unique: true |
| encrypted_password       |  string |  null: false |
| dream     |  string |  null: false |
| birth      |  date   |  null: false |

### Association
- has_many :skills
- has_many :friends

## skillsテーブル
| Column     |  Type   |  Options     |
| --------   |  ------ |  ----------- |
| name       |  string |  null: false |
| genre_id|  integer  |  null: false, active_hash |
| level   |  integer |  null: false |
| can      |  text       |  null: false   |
| user   |  references |  null: false , foreign_key: true|

### Association
- belongs_to :user
- has_one :exp_upper
- has_many :friends

## exp_uppersテーブル
| Column     |  Type   |  Options     |
| --------   |  ------ |  ----------- |
| day      |  integer   |  null: false |
| minutes      |  integer   |  null: false |
| concentration      |  integer   |  null: false , active_hash|
| new_practice      |  integer   |  null: false, active_hash |

### Association
- belongs_to :skill

## friendsテーブル
| Column     |  Type   |  Options     |
| --------   |  ------ |  ----------- |
| title      |  text       |  null: false   |
| info      |  text       |  null: false   |
| user   |  references |  null: false , foreign_key: true|
| skill  |  references |  null: false , foreign_key: true|

### Association 
- has_many :users
- has_many :skills

