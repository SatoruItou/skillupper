
# README
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

