# CASUAL CHAT WORKER PRICING AND FREE TICKET CONTRACT

status: canonical-free-ticket-pricing-freeze
phase: Phase B
app_name: CasualChatWorker
display_name: 雑談ワーカー
owner: Boss
prepared_by: Zero

## 1. Pricing Canon

CasualChatWorker の価格正本は以下とする。

| duration_minutes | base_price_jpy | base_unit |
|---:|---:|---|
| 30 | 500 | 30min |
| 60 | 1000 | 30min x2 |
| 90 | 1500 | 30min x3 |
| 120 | 2000 | 30min x4 |

価格は Friend / Lover 共通とする。

## 2. Monthly Free Ticket Canon

月初無料チケットは以下を正本とする。

| item | value |
|---|---|
| grant_timing | 毎月月初 |
| tickets_per_month | 2 |
| minutes_per_ticket | 30 |
| total_free_minutes_per_month | 60 |
| target_worker_type | Friend / Lover 共通 |
| application_unit | 30分単位 |
| v1_carryover_policy | 翌月繰越なし |
| price_canon_relation | 30分500円の価格正本は維持し、チケットを利用権として適用 |

## 3. Application Rules

- 30分契約: 最大1枚適用可能。適用後0円。
- 60分契約: 最大2枚適用可能。適用後0円。
- 90分契約: 最大2枚適用可能。残30分は500円。
- 120分契約: 最大2枚適用可能。残60分は1,000円。
- チケット不足時は残時間分のみ通常価格を請求する。
- チケットは契約確定前の確認画面で適用有無を表示する。
- チケット利用は business 側で契約・利用履歴と紐づけて管理する。
- aiworker / cx22073jw にはチケット正本を置かない。

## 4. Display Rules

契約確認画面では以下を表示する。

- 基本価格
- 利用可能チケット数
- 適用チケット数
- 無料適用時間
- 支払対象時間
- 支払予定額
- チケット適用後の最終価格

