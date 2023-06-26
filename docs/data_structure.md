# data_structure.md

## users

| カラム名 | データ型 | 制約 | デフォルト | 備考 |
| - | - | - | - | - |
| id | uuid | not null, unique |  | ユーザーID |
| name | string | not null |  | ユーザー名 |
| email | string | not null, unique |  | メールアドレス |
| password_digest | not null |  |  | パスワード |

## words

| カラム名 | データ型 | 制約 | デフォルト | 備考 |
| - | - | - | - | - |
| id | uuid | not null, unique |  | ワードID |
| name | string | not null, unique(user内) |  | ワード |
| comment | text |  |  | 備考コメント |
| status | integer | not null | 1 | ステータス（enum） |
| user_id | uuid | not null |  | ユーザーID |

## labels

| カラム名 | データ型 | 制約 | デフォルト | 備考 |
| - | - | - | - | - |
| id | uuid | not null, unique |  | ラベルID |
| name | string | not null, unique(user内) |  | ラベル |
| user_id | uuid | not null |  | ユーザーID |

## words_labels

| カラム名 | データ型 | 制約 | デフォルト | 備考 |
| - | - | - | - | - |
| word_id | uuid | not null, unique(user内) |  | ワードID |
| label_id | uuid | not null, unique(user内) |  | ラベルID |

## admin_users

| カラム名 | データ型 | 制約 | デフォルト | 備考 |
| - | - | - | - | - |
| id | uuid | not null, unique |  | 管理ユーザーID |
| name | string | not null |  | 管理ユーザー名 |
| email | string | not null, unique |  | メールアドレス |
| password_digest | not null |  |  | パスワード |
