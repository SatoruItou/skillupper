
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

## ターゲット（ペルソナ）
このアプリケーションは、学習に対して劣等感や無力感を感じて学習から逃げた経験あるゲームが好きな人間をターゲットにしている。
学ぶ事を諦めてしまった人の多くは、ゲームやアニメや漫画、最近ではYouTubeに心奪われる事が多く、特にゲームやYouTubeには体内でドーパミンが簡単に放出される事が確認されている。※ドーパミンは神経に快楽を与える
自分の行動がゲームっぽく努力が値として蓄積され増えていく様子が視覚化されることでドーパミンを放出させ、モチベートを維持・向上させるきっかけにしてほしい。
※心理学ではモチベートの維持・向上は、記録が増えていく様子が目に見える事で発揮される事がわかっている。


## 基本操作
・ユーザー登録
・ログイン
・スキル追加
・経験値の追加（未実装）

### ユーザー登録
・メールアドレス
・パスワード
・ニックネーム
・将来の夢（任意）
・生年月日

### スキル登録
・アイコン（スキルに関する画像投稿）
・スキル名
・スキルのジャンル
・目標の設定（そのスキルで何ができるようになりたいか）

### 経験値追加(未実装)
  ### 基準値 
・学習時間
  ###  選択によって倍率変動
・集中力（散漫気味・断続的な集中・集中・マインドフル状態）
・新しい技術の獲得（あり・なし）
・アウトプット（あり・なし）
フォーム送信で経験値が加算。


## 使用技術
・Ruby 2.6.5
・Ruby on Rails 6.0.3.7
・MySQL  14.14

## 機能、非機能一覧（gem）
・pry-rails
・devise
・mini_magick
・image_processing, '~> 1.2'
・active_hash



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

