
# README

## タイトル
スキルアッパー
## 概要
自分のスキルを視覚化して伸ばす為のアプリケーション。
自分が習得したいスキルを登録して、学習時間・集中力・新しい技術を習得したか・アウトプットをしたかをフォームに入力して送信すると、経験値が入りゲームのように自分のスキルレベルを上げることができます。

## 制作に至る経緯
自分のスキルはゲームのように目に見えないので、学習が苦手な私にとっては時に苦痛に感じる時があります。
・成長できているか不安だから、楽な方に逃げる。
・目標が遠く感じるから、努力は無意味だと感じてしまう。
・自分には向いてい無いから諦めよう。
努力をした経験が少ない私は、努力した後にえられるよモノよりも、目先の欲望（ゲームがしたい・アニメが見たい）の方が魅力的に感じてしまいます。この欲望を満たすために、人生の一部分をゲーム化する事で、自分のスキルが上がってる（スキルアッパー）感覚を得られるアプリケーションを作りたいと思い、制作に至りしました。

## アプリを利用するメリット
自分の挑戦した時間が積み上げられていくシステムになっているので、自分の努力が目に見えてわかります。
心理学では、右肩上がりの積み上げがモチベーションを上げてくれることがわかっている。自分の上げたいスキルの経験値が積み上がり、レベルが上がる様子を視覚的に見える事でモチベーションの維持・向上のメリットがあります。


## 基本機能
### スキルアップ機能 
 何時間・どのくらい集中したか・新しい技術を学んだか等を選択し、経験値が加算され、一定経験値でレベルが上がる。
・バディ機能 - 同じスキル同士でマッチングでき、お互いの活動内容を報告したり、情報交換を行うことができる。

# 第一段階（二週間で作る）
  スキルアップ部分

# 第二段階
  バディ機能 

# 使用技術
・Ruby
・Ruby on Rails
・My SQL
・RSpec

# AWS構造

# 機能、非機能一覧（gem）
・devise
・mini_magick
・image_processing, ~> 1.2




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
| image      | 
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

