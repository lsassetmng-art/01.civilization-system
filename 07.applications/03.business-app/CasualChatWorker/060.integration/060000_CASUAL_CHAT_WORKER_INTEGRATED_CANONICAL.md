# CASUAL CHAT WORKER INTEGRATED CANONICAL

status: regenerated
generated_at: 20260424_223440
app_name: CasualChatWorker
display_name: 雑談ワーカー


============================================================
001_CASUAL_CHAT_WORKER_ROOT_OVERVIEW.md
============================================================

MISSING: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/001_CASUAL_CHAT_WORKER_ROOT_OVERVIEW.md

============================================================
030.model/030010_CASUAL_CHAT_WORKER_APP_CONTRACT_MODEL.md
============================================================

MISSING: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/030.model/030010_CASUAL_CHAT_WORKER_APP_CONTRACT_MODEL.md

============================================================
040.screen/040020_CASUAL_CHAT_WORKER_SCREEN_EXACT_CORE.md
============================================================

MISSING: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/040.screen/040020_CASUAL_CHAT_WORKER_SCREEN_EXACT_CORE.md

============================================================
040.screen/040010_CASUAL_CHAT_WORKER_FREE_TICKET_SCREEN_EXACT.md
============================================================

# CASUAL CHAT WORKER FREE TICKET SCREEN EXACT

status: screen-exact-free-ticket-added
phase: Phase C
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Required Screens

無料チケット対応として以下の表示を追加する。

### 1-1. AI Worker Detail Screen

表示項目:
- 基本価格: 30分500円
- 月初無料チケット残数
- 1枚につき30分無料の説明
- Friend / Lover 共通利用可能の説明

### 1-2. Duration Select Screen

表示項目:
- 30分 / 60分 / 90分 / 120分
- 基本価格
- 適用可能チケット数
- チケット適用後価格

### 1-3. Contract Confirm Screen

表示項目:
- 選択AI
- Worker type
- 契約時間
- 基本価格
- 適用チケット数
- 無料適用時間
- 支払対象時間
- 最終価格
- チケット利用後残数

### 1-4. Usage History Screen

表示項目:
- 契約日時
- AIワーカー
- Worker type
- 契約時間
- 使用チケット数
- 支払額
- セッション状態


============================================================
050.stateflow/050020_CASUAL_CHAT_WORKER_STATEFLOW_EXACT_CORE.md
============================================================

MISSING: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/050.stateflow/050020_CASUAL_CHAT_WORKER_STATEFLOW_EXACT_CORE.md

============================================================
050.stateflow/050010_CASUAL_CHAT_WORKER_FREE_TICKET_STATEFLOW_EXACT.md
============================================================

# CASUAL CHAT WORKER FREE TICKET STATEFLOW EXACT

status: stateflow-exact-free-ticket-added
phase: Phase C
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Stateflow

1. User opens AI worker detail.
2. User selects duration.
3. App fetches free ticket balance.
4. App calculates base price.
5. App calculates max applicable ticket count.
6. User chooses whether to apply tickets.
7. App shows final quote.
8. User confirms contract.
9. App reserves or consumes free tickets.
10. App creates contract and session.
11. Chat starts.
12. Session ends.
13. Usage log and ticket usage history are finalized.

## 2. Ticket Application Matrix

| duration | max_ticket_count | free_minutes | paid_minutes_if_max_applied |
|---:|---:|---:|---:|
| 30 | 1 | 30 | 0 |
| 60 | 2 | 60 | 0 |
| 90 | 2 | 60 | 30 |
| 120 | 2 | 60 | 60 |

## 3. Failure Recovery

| failure | recovery |
|---|---|
| quote mismatch | 契約確定を止め、再見積もり |
| ticket insufficient | 利用可能枚数へ自動補正し確認画面へ戻す |
| ticket reserve failed | 契約を作成しない |
| payment failed after ticket reserve | ticket usage を reverted に戻す |
| session start failed | contract / ticket usage を pending_review にする |


============================================================
070.api/070020_CASUAL_CHAT_WORKER_API_EXACT_CORE.md
============================================================

MISSING: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/070.api/070020_CASUAL_CHAT_WORKER_API_EXACT_CORE.md

============================================================
070.api/070010_CASUAL_CHAT_WORKER_FREE_TICKET_API_EXACT.md
============================================================

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


============================================================
080.policy/080010_CASUAL_CHAT_WORKER_POLICY_EXACT.md
============================================================

MISSING: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/080.policy/080010_CASUAL_CHAT_WORKER_POLICY_EXACT.md

============================================================
090.db/090020_CASUAL_CHAT_WORKER_DB_DDL_FREEZE_CORE.md
============================================================

MISSING: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/090.db/090020_CASUAL_CHAT_WORKER_DB_DDL_FREEZE_CORE.md

============================================================
090.db/090010_CASUAL_CHAT_WORKER_FREE_TICKET_DDL_FREEZE.md
============================================================

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


============================================================
100.pricing/100020_CASUAL_CHAT_WORKER_PRICING_FREEZE_MASTER.md
============================================================

MISSING: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/100.pricing/100020_CASUAL_CHAT_WORKER_PRICING_FREEZE_MASTER.md

============================================================
100.pricing/100010_CASUAL_CHAT_WORKER_PRICING_AND_FREE_TICKET_CONTRACT.md
============================================================

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


============================================================
110.aiworker-reference/110010_CASUAL_CHAT_WORKER_AIWORKER_REFERENCE_SELECTION.md
============================================================

MISSING: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/110.aiworker-reference/110010_CASUAL_CHAT_WORKER_AIWORKER_REFERENCE_SELECTION.md

============================================================
120.cx-reference/120010_CASUAL_CHAT_WORKER_CX_REFERENCE_SELECTION.md
============================================================

MISSING: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/120.cx-reference/120010_CASUAL_CHAT_WORKER_CX_REFERENCE_SELECTION.md

============================================================
130.commonos/130010_CASUAL_CHAT_WORKER_COMMONOS_COMPONENT_SELECTION.md
============================================================

MISSING: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/130.commonos/130010_CASUAL_CHAT_WORKER_COMMONOS_COMPONENT_SELECTION.md

============================================================
140.safety/140010_CASUAL_CHAT_WORKER_FRIEND_LOVER_SAFETY_EXACT.md
============================================================

MISSING: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/140.safety/140010_CASUAL_CHAT_WORKER_FRIEND_LOVER_SAFETY_EXACT.md

============================================================
150.rival-analysis/150010_CASUAL_CHAT_WORKER_RIVAL_ANALYSIS_AND_DIFF.md
============================================================

# CASUAL CHAT WORKER RIVAL ANALYSIS AND DIFFERENTIATION

status: generated
phase: Phase B
app_name: CasualChatWorker
display_name: 雑談ワーカー
owner: Boss
prepared_by: Zero

## 1. Purpose

This document fixes rival categories, comparison axes, adoption points, rejection points, and differentiation strategy for CasualChatWorker.

## 2. Rival Categories

| category | relevance |
|---|---|
| AI character chat apps | Many characters, roleplay, chat-first experience |
| AI companion apps | Friend / partner-like AI relationship experience |
| AI girlfriend / boyfriend apps | Lover-type expectation and safety risk comparison |
| rental friend services | Time-based companionship service model |
| rental boyfriend / girlfriend style services | Lover positioning comparison |
| live chat / short-time service apps | Time contract, timer, session end, payment flow |
| creator / character marketplace apps | Catalog, profile, favorites, selection UX |

## 3. Comparison Axes

| axis | rival tendency | CasualChatWorker direction |
|---|---|---|
| pricing | subscription, freemium, token, or service-specific | fixed 30 minutes 500 JPY |
| duration | often open-ended or plan-based | strict 30 / 60 / 90 / 120 minute contract |
| free benefit | free plan or trial varies | 2 monthly tickets, 30 minutes each |
| character selection | character catalog or custom companion | aiworker catalog read surface |
| relationship type | friend, companion, romance, roleplay | Friend / Lover explicitly separated |
| romance boundary | may be ambiguous | Lover is pseudo-romantic rental boyfriend/girlfriend style only |
| safety | sector-dependent | strong Friend / Lover safety boundary |
| data ownership | product-specific | business / aiworker / cx22073jw / app_common separated |
| chat material | model-only or character prompt-dependent | CX22073JW smalltalk material read-only reference |
| UI foundation | product-specific | CommonOS shared UI foundation |

## 4. Adopt

- simple AI worker card
- search and filter
- Friend / Lover badge
- profile preview
- fast chat start after confirmation
- warm onboarding
- favorite AI candidate
- previous safe session summary candidate
- time contract clarity
- pre-confirmation
- natural session end
- usage history
- re-contract candidate

## 5. Reject

- unclear canon ownership
- uncontrolled character duplication
- ambiguous safety boundary
- open-ended session without contract awareness
- excessive dependency
- real relationship confusion
- unlimited emotional attachment loop
- unsafe romantic escalation
- real-world meeting model
- location exchange
- contact exchange
- private arrangement outside app

## 6. Differentiation

CasualChatWorker differentiates by combining:

- aiworker official catalog
- Friend / Lover explicit type separation
- fixed 30-minute unit pricing
- monthly free ticket entitlement
- time-limited contract session
- CX22073JW read-only smalltalk material
- business-owned contract and usage canon
- CommonOS shared UI foundation
- strong Lover safety boundary
- no real relationship claim
- no adult sexual service conversion
- no external execution from chat

## 7. Must-Add Features From Rival Analysis

v1 additions:
- worker type filter
- Friend / Lover explanation before contract
- monthly free ticket balance display
- pre-contract quote
- session timer
- natural end message
- safety redirect banner
- usage history with ticket usage
- safe topic suggestion
- re-contract candidate after session end

v1.1 candidates:
- favorite AI
- previous safe session summary
- topic preference
- Lover date-like situation selector
- Friend topic selector
- review / rating
- campaign price candidate
- availability display candidate

future candidates:
- voice chat
- group chat
- multiple AI room
- reservation
- streamer / live service connection
- marketplace display profile connection


============================================================
160.feature-addition/160010_CASUAL_CHAT_WORKER_FEATURE_ADDITION_PLAN.md
============================================================

# CASUAL CHAT WORKER FEATURE ADDITION PLAN

status: generated
phase: Phase B to C
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. v1 Must-Have Features

| feature | purpose | owner |
|---|---|---|
| AI worker list | choose worker | app + aiworker reference |
| Friend / Lover filter | type selection | app |
| worker detail | contract decision | app + aiworker reference |
| Friend explanation | expectation control | app |
| Lover explanation | expectation and safety control | app + aiworker safety |
| duration selector | 30 / 60 / 90 / 120 minute contract | app |
| price quote | pre-contract price | business |
| monthly free ticket balance | entitlement display | business |
| free ticket apply selector | user chooses discount usage | business |
| final price confirmation | prevent mismatch | business |
| contract confirm | contract creation | business |
| chat session | time-bounded chat | app + business |
| remaining timer | contract awareness | app + CommonOS |
| safety redirect | safe conversation | aiworker + app |
| CX topic reference | safe topic material | cx22073jw read-only |
| session end | natural close | business + app |
| usage history | record display | business |
| ticket usage history | free ticket transparency | business |

## 2. v1 UX Additions

Free Ticket Display:
- home
- AI worker detail
- duration select
- contract confirm
- usage history

Lover Notice:
- pseudo-romantic AI worker
- rental boyfriend/girlfriend style entertainment
- not a real relationship
- contract-time only
- safe boundary exists

Safe Topic Suggestion:
- Friend: food, weather, hobbies, seasonal talk, entertainment, daily events
- Lover: date-like smalltalk, sweet greeting, caring talk, compliment, safe romantic roleplay

## 3. v1.1 Feature Candidates

| feature | reason |
|---|---|
| favorite AI | repeat contract |
| re-contract shortcut | time-based revenue and convenience |
| previous safe summary | continuity without dependency |
| review / rating | catalog quality |
| topic selection | safer conversation start |
| Lover scenario selector | controlled romance roleplay |
| Friend casual topic selector | low-pressure start |
| availability candidate | booking-like UX |
| campaign ticket candidate | promotion expansion |

## 4. Explicit Non-Features

- adult sexual service
- surveillance
- threats
- dependency induction
- real-world dating arrangement
- location exchange
- contact exchange
- external execution
- PG apply
- destructive DB operation
- direct ERP posting in v1


============================================================
170.implementation-ready-freeze/170010_CASUAL_CHAT_WORKER_IMPLEMENTATION_APPLY_ORDER.md
============================================================

# CASUAL CHAT WORKER IMPLEMENTATION APPLY ORDER

status: generated
phase: Phase E
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Pre-Implementation Rule

Do not start implementation until implementation-ready freeze is PASS.

Required before implementation:
- root index
- root overview
- integrated canonical
- screen exact
- stateflow exact
- API exact
- DB DDL freeze
- pricing freeze
- free ticket freeze
- AI worker reference selection
- CX reference selection
- CommonOS component selection
- Friend / Lover safety exact
- rival analysis
- feature addition plan
- verification gate

## 2. Implementation Root

Implementation root:
- ~/03.civilization-development/03.business-os/CasualChatWorker

CommonOS consumer root:
- ~/03.civilization-development/03.business-os/_commonos

## 3. Apply Order

Step 1. Implementation Folder Skeleton:
- app
- components
- screens
- state
- api-client
- domain
- pricing
- ticket
- safety
- aiworker-reference
- cx-reference
- commonos
- tests
- docs

Step 2. CommonOS Consumer Connection:
- AIWorkerCard adapter
- WorkerTypeBadge adapter
- DurationSelector adapter
- PriceQuotePanel adapter
- FreeTicketPill adapter
- ContractConfirmModal adapter
- RemainingTimer adapter
- ChatBubble adapter
- SafetyRedirectBanner adapter
- UsageHistoryRow adapter

Step 3. Domain Types:
- WorkerType
- DurationOption
- PriceQuote
- FreeTicketBalance
- Contract
- Session
- ChatMessage
- SafetyState
- UsageHistory

Step 4. API Client Stubs:
- listWorkers
- getWorkerDetail
- getFreeTicketBalance
- quoteContract
- confirmContract
- sendSessionMessage
- endSession
- getUsageHistory

Step 5. Screen Implementation:
- Home
- WorkerList
- WorkerDetail
- DurationSelect
- ContractConfirm
- ChatSession
- SessionEnd
- UsageHistory

Step 6. Safety Integration:
- Friend safety copy
- Lover safety copy
- safety redirect display
- hard block display candidate
- session review candidate

Step 7. Test Fixtures:
- Friend worker
- Lover worker
- ticket balance 2
- ticket balance 0
- quote 30 with ticket
- quote 90 with 2 tickets
- Lover safety redirect
- session end

Step 8. Verification:
- file existence check
- no secrets
- no DB apply
- no direct ERP
- no aiworker canon copy
- no cx22073jw canon copy
- pricing consistency
- free ticket consistency
- safety text consistency

## 4. SQL Rule

DB apply is not part of this design phase.

When implementation reaches DB phase, SQL must use:

psql "$PERSONA_DATABASE_URL" <<'SQL'
...
SQL

ERP only:

psql "$DATABASE_URL" <<'SQL'
...
SQL


============================================================
170.implementation-ready-freeze/170020_CASUAL_CHAT_WORKER_IMPLEMENTATION_READY_FREEZE.md
============================================================

# CASUAL CHAT WORKER IMPLEMENTATION READY FREEZE

status: freeze-candidate
phase: Phase E
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Canonical Fixed Points

| item | fixed value |
|---|---|
| app_name | CasualChatWorker |
| display_name | 雑談ワーカー |
| category | 03.business-app |
| design_root | ~/01.civilization-system/07.applications/03.business-app/CasualChatWorker |
| implementation_root | ~/03.civilization-development/03.business-os/CasualChatWorker |
| main_schema | business |
| reference_schema | aiworker / cx22073jw / app_common |
| DB env | PERSONA_DATABASE_URL |
| ERP env | DATABASE_URL only when ERP linkage is explicitly added |
| worker_types | Friend / Lover |
| base_price | 30 minutes 500 JPY |
| durations | 30 / 60 / 90 / 120 minutes |
| monthly_free_tickets | 2 |
| free_minutes_per_ticket | 30 |
| max_free_minutes_per_month | 60 |
| v1_carryover | no carryover candidate |
| Lover definition | pseudo-romantic rental boyfriend/girlfriend style AI worker |
| Lover relationship | not real relationship |
| ERP direct linkage | not v1 |

## 2. Freeze Pass Criteria

PASS when:
- all required documents exist
- all required folders have INDEX.md and OVERVIEW.md
- integrated canonical exists
- pricing appears consistently
- monthly free ticket appears consistently
- Friend / Lover appear consistently
- Lover safety boundary appears
- business / aiworker / cx22073jw / app_common boundary appears
- no ERP direct linkage is included in v1
- no DB apply is executed
- no destructive action is included

## 3. Freeze Result

Current document status:
- freeze-candidate

Final PASS must be determined by verification gate.


============================================================
180.verification/180010_CASUAL_CHAT_WORKER_DESIGN_VERIFICATION_GATE.md
============================================================

# CASUAL CHAT WORKER DESIGN VERIFICATION GATE

status: generated
phase: Phase E
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Verification Purpose

This document defines the design verification gate before implementation.

## 2. Required Checks

File existence:
- root index
- root overview
- integrated canonical
- each required folder INDEX.md and OVERVIEW.md
- each required exact document

Canon consistency:
- CasualChatWorker
- 雑談ワーカー
- 03.business-app
- 30 minutes 500 JPY
- 30 / 60 / 90 / 120
- monthly free ticket
- 2 tickets
- 30 minutes per ticket
- Friend
- Lover
- pseudo-romantic
- rental boyfriend/girlfriend
- business
- aiworker
- cx22073jw
- app_common
- CommonOS

Boundary:
- business owns contract and usage
- business owns free ticket
- aiworker owns AI worker catalog
- aiworker owns conversation control
- cx22073jw owns smalltalk material
- app_common owns presentation metadata
- ERP direct linkage is not v1

Safety:
- no monitoring
- no threats
- no dependency induction
- no sexual service conversion
- no location request
- no contact request
- no real relationship claim
- Lover is pseudo-romantic only

