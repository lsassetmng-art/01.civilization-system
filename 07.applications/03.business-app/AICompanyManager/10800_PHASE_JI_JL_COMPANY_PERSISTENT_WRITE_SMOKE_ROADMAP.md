# AICompanyManager Phase JI-JL Company Persistent Write Smoke Roadmap

phase: Phase JI-JL
status: company-persistent-write-smoke-started
boss_persistent_write_ok: true
db_write: true
persistent_db_write: true
rls_apply: false
psql: true
write_api_connect: true
browser_write_fetch: true
backend_db_write: true
company_persistent_write: true
department_persistent_write: false
organization_persistent_write: false
ledger_persistent_write: false
review_action: false
csv_import: false
workflow_start: false
live_aiworkeros_call: false
git_push: false

## 目的

Boss persistent write OK を受け、最小の永続書き込みとして company persistent write smoke を1件だけ実行する。

## 佐藤レビュー

DB担当 佐藤:
- company の最小 persistent smoke のみ許可
- department / organization / ledger の永続書き込みは次工程以降
- review / CSV / workflow / live AIWorkerOS は別承認
- RLS変更なし
- schema変更なし

## 今回の範囲

Phase JI:
- Boss persistent write OK record

Phase JJ:
- company persistent write scope

Phase JK:
- localhost POST smoke and persisted row validation

Phase JL:
- next scope separation gate

## 実行すること

- business.aicm_company に smoke row を1件永続挿入
- inserted company_id を response/evidence に記録
- inserted row exists を検証
- final UI は変更しない

## 実行しないこと

- RLS APPLY
- schema change
- department persistent write
- organization persistent write
- ledger persistent write
- review action
- CSV import
- workflow start
- live AIWorkerOS call
- git push
