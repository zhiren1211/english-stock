```mermaid
erDiagram
    user {
        uuid id PK
        string name
        string email
        string password_digest
    }

    word {
        uuid id PK
        string name
        text comment
        int status
        ssid user_id FK "user"
    }

    label {
        uuid id PK
        string name
        ssid user_id FK "user"
    }

    word_label {
        uuid word_id
        uuid label_id
    }

    admin_user {
        uuid id PK
        string name
        string email
        string password_digest
    }

    user ||--o{ word : ""
    user ||--o{ label : ""
    word ||--o{ word_label: ""
    label ||--o{ word_label: ""
```
