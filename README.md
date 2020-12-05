## user
| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| password | string | null: false |
| mail     | string | null: false |

### Association
- has_many :scenes
- has_many :user_scene

## scenes

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| name       | string     | null: false                    |
| user_name  | string     | null: false                    |
| user       | references | null: false, foreign_key: true |
| comment    | text       |                                |
### Association
- has_one :user
- has_many :user_scene

### user_scene

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| scene  | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :scene

