# CASUAL CHAT WORKER FREE TICKET API EXACT

status: api-exact-free-ticket-added
phase: Phase C
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. API Scope

無料チケット関連 API は business スキーマの契約・利用枠管理を操作する。

- aiworker: AIワーカー正本参照のみ
- cx22073jw: 雑談材料 read-only 参照のみ
- app_common: UI / presentation metadata 参照のみ

## 2. GET /api/v1/business/casual-chat-worker/free-ticket/balance

目的:
- 利用者の当月無料チケット残数を取得する。

Request fields:
- user_id: uuid
- target_month: YYYY-MM

Response fields:
- user_id: uuid
- target_month: YYYY-MM
- granted_ticket_count: 2
- remaining_ticket_count: integer
- minutes_per_ticket: 30
- remaining_free_minutes: integer
- carryover_enabled: false

## 3. POST /api/v1/business/casual-chat-worker/contract/quote

目的:
- 契約前に、無料チケット適用後価格を見積もる。

Request fields:
- user_id: uuid
- ai_worker_id: uuid
- worker_type: Friend or Lover
- duration_minutes: 30 / 60 / 90 / 120
- requested_free_ticket_count: 0 / 1 / 2

Response fields:
- duration_minutes
- base_price_jpy
- available_free_ticket_count
- applied_free_ticket_count
- free_minutes
- paid_minutes
- final_price_jpy
- price_explanation

## 4. POST /api/v1/business/casual-chat-worker/contract/confirm

目的:
- 契約確定時に、無料チケット消費と契約を同一トランザクション方針で確定する。

Request fields:
- user_id: uuid
- ai_worker_id: uuid
- worker_type: Friend or Lover
- duration_minutes: 30 / 60 / 90 / 120
- apply_free_ticket_count: 0 / 1 / 2
- confirmed_price_jpy: integer

Response fields:
- contract_id
- session_id
- status
- duration_minutes
- applied_free_ticket_count
- free_minutes
- paid_minutes
- charged_price_jpy
- remaining_free_ticket_count

## 5. Error Codes

| code | meaning |
|---|---|
| FREE_TICKET_NOT_GRANTED | 当月チケットが未配布 |
| FREE_TICKET_INSUFFICIENT | 残チケット不足 |
| FREE_TICKET_EXCEEDS_DURATION | 契約時間を超えるチケット適用 |
| FREE_TICKET_ALREADY_USED | 同一チケットの二重利用 |
| FREE_TICKET_MONTH_CLOSED | 対象月が締め済み |
| PRICE_QUOTE_MISMATCH | 見積価格と確定価格が不一致 |

