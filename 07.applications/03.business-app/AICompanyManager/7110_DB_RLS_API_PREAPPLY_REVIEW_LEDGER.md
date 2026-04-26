# AICompanyManager DB/RLS/API Pre-Apply Review Ledger

phase: Phase DY
status: preapply-review-ledger
db_apply: false
rls_apply: false
real_api_connect: false
live_aiworkeros_call: false

## 1. レビュー目的

DB/RLS/API接続に進む前に、現在の local implementation と将来のDB正本/API正本の境界を確認する。

## 2. 現在の正本

現時点の正本:
- localStorage
- LocalRepository
- final local bundle

Final UI:
- index.html
- assets/js/phase-de-dh-workflow-final-local-ui.js
- assets/css/phase-de-dh-workflow-final-local-ui.css

## 3. 将来の正本

DB接続後の正本:
- Persona側DB
- business schema
- AIWorkerOS実体は aiworker schema
- UI localStorage は cache / draft / offline fallback

## 4. DB review対象

確認対象:
- company
- company common rules
- department
- organization
- organization robot assignment
- department task ledger
- task reference files
- task supplemental materials
- CSV import batch / row
- review item
- review action
- workflow run
- workflow step

## 5. RLS review対象

確認対象:
- company scoped access
- department scoped access
- organization scoped access
- review approval visibility
- actor membership
- role boundary
- service role boundary
- audit insert boundary

## 6. API review対象

確認対象:
- bootstrap
- company create/save/delete
- department create/save/delete
- organization create/save/delete
- ledger save/delete
- csv preview/import
- review approve/reject/revision
- workflow start

## 7. AIWorkerOS live call review対象

確認対象:
- Manager auto breakdown
- Leader auto assignment
- Worker deliverable creation
- AI auto review
- audit trail
- timeout/retry/error handling
- human approval boundary

## 8. 現時点で未実行

- DB WRITE
- RLS APPLY
- psql
- REAL API CONNECT
- LIVE AIWORKEROS CALL

## 9. 結論

このPhaseはレビュー資料作成のみ。
DB適用は Boss DB OK と 佐藤（DB担当）レビュー後に別Phaseで行う。
