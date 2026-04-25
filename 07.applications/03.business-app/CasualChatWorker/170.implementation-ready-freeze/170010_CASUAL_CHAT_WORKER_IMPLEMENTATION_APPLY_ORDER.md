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

