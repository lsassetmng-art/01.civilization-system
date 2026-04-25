# CASUAL CHAT WORKER FREE TICKET DDL FREEZE

status: db-ddl-freeze-design-only
phase: Phase D
app_name: CasualChatWorker
display_name: 雑談ワーカー
schema_owner: business
execution_env: PERSONA_DATABASE_URL

## 1. Design Scope

この文書は DDL freeze 設計であり、DB apply ではない。
実DBへの適用は implementation-ready freeze 後に別途行う。

## 2. Table Candidates

### 2-1. business.chat_worker_free_ticket_grant

目的:
- 月初に配布された無料チケット付与単位を管理する。

columns:
- grant_id: uuid primary key
- user_id: uuid
- grant_month: text YYYY-MM
- granted_ticket_count: integer v1は2
- minutes_per_ticket: integer v1は30
- total_granted_minutes: integer v1は60
- carryover_enabled: boolean v1はfalse
- grant_status: granted / revoked / expired
- granted_at: timestamptz
- expires_at: timestamptz
- created_at: timestamptz
- updated_at: timestamptz

unique候補:
- user_id + grant_month

### 2-2. business.chat_worker_free_ticket_balance

目的:
- 当月の無料チケット残数を高速参照する。

columns:
- balance_id: uuid primary key
- user_id: uuid
- grant_month: text YYYY-MM
- granted_ticket_count: integer
- used_ticket_count: integer
- remaining_ticket_count: integer
- remaining_free_minutes: integer
- balance_status: active / expired / closed
- created_at: timestamptz
- updated_at: timestamptz

unique候補:
- user_id + grant_month

### 2-3. business.chat_worker_free_ticket_usage

目的:
- 契約ごとの無料チケット利用履歴を管理する。

columns:
- usage_id: uuid primary key
- grant_id: uuid
- balance_id: uuid
- contract_id: uuid
- session_id: uuid
- user_id: uuid
- used_ticket_count: integer
- used_free_minutes: integer
- base_price_jpy: integer
- discounted_amount_jpy: integer
- final_price_jpy: integer
- usage_status: reserved / consumed / reverted
- used_at: timestamptz
- created_at: timestamptz

## 3. DDL Freeze Notes

- 無料チケットは business の契約・課金補助情報として扱う。
- aiworker には無料チケット正本を置かない。
- cx22073jw には無料チケット正本を置かない。
- app_common には無料チケットの表示メタデータのみ置く候補とする。
- 契約確定時に ticket usage と contract を整合させる。
- 二重利用防止を必須とする。
- 月初配布処理は将来 batch / scheduler 候補とする。

