
# README

## タイトル
スキルアッパー
## 概要
自分のスキルを視覚化して伸ばす為のアプリケーション。
自分が習得したいスキルを登録して、学習時間をフォームに入力して送信すると、努力した時間を積み上げることができます。

## 制作に至る経緯
努力を続ける事はとても難しい作業です。何故なら努力は目に見えないものだからです。
ふとした時、ゲームのプレイ時間を見て私は思いました。「この時間が学習時間だったらどれだけの達成感なのだろう。」そんな学生時代に感じた想いを形にしたいと考え、このアプリケーション制作に至りました。


## ターゲット（ペルソナ）
このアプリケーションは、学習に対して劣等感や無力感を感じて学習から逃げた経験あるゲームが好きな人間をターゲットにしています。
学ぶ事を諦めてしまった人の多くは、ゲームやアニメや漫画、最近ではYouTubeに心奪われる事が多く、特にゲームやYouTubeには体内でドーパミンが簡単に放出される事が確認されています。※ドーパミンは神経に快楽を与える
自分の行動がゲームっぽく努力が値として蓄積され増えていく様子が視覚化されることでドーパミンを放出させ、モチベートを維持・向上させるきっかけにしてほしいです。
※心理学ではモチベートの維持・向上は、記録が増えていく様子が目に見える事で発揮される事がわかっています。


## 基本操作
・ユーザー登録
・ログイン
・スキル追加
・学習時間の追加

### ユーザー登録
・メールアドレス
・パスワード
・ニックネーム
・将来の夢（任意）
・生年月日

### スキル登録
・アイコン（目標の人物やスキルに関連画像を投稿）...必須
・スキル名(任意の名前)...必須
・スキルのジャンル(任意のジャンル)...必須
・目標の設定（そのスキルで何ができるようになりたいか）...必須

### 時間の追加機能 
・学習時間
フォームを送信すると時間が蓄積。

## 今後の追加実装
・時間を経験値にして、一定ポイントがたまるとレベルが上がる
・バディ機能（友達と目標学習時間をクリアする仕組み）
・コメント機能（アウトプット用）


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
- has_many :friends（未実装）

## skillsテーブル
| Column     |  Type   |  Options     |
| --------   |  ------ |  ----------- |
| name       |  string |  null: false |
| genre      |  string |  null: false |
| can        |  string |  null: false |
| user   |  references |  null: false , foreign_key: true|
| image      | 
### Association
- belongs_to :user
- has_one_attached :image
- has_many ::sum_exps, foreign_key: :skill_id, dependent: :destroy
- has_many :friends(未実装)

## exp_uppersテーブル
| Column     |  Type   |  Options     |
| --------   |  ------ |  ----------- |
| minutes      |  integer   |  null: false |


### Association
- belongs_to :skill, optional: true

## friendsテーブル(未実装)
| Column     |  Type   |  Options     |
| --------   |  ------ |  ----------- |
| title      |  text       |  null: false   |
| info      |  text       |  null: false   |
| user   |  references |  null: false , foreign_key: true|
| skill  |  references |  null: false , foreign_key: true|

### Association 
- has_many :users
- has_many :skills

