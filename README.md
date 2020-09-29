## user
| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| password | string | null: false |
| mail     | string | null: false |

### Association
- has_many :scenes

## scenes

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| name       | string     | null: false                    |
| user_name  | string     | null: false                    |
| user       | references | null: false, foreign_key: true |
| comment    | text       |                                |
### Association
- has_one :user
