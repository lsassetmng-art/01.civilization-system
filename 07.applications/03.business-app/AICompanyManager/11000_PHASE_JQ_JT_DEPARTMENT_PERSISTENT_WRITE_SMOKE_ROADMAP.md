# AICompanyManager Phase JQ-JT Department Persistent Write Smoke Roadmap

phase: Phase JQ-JT
status: department-persistent-write-smoke-started
boss_department_persistent_write_ok: true
parent_company_id: 00000000-0000-4000-8000-1db11893cb24
db_write: true
persistent_db_write: true
rls_apply: false
psql: true
write_api_connect: true
browser_write_fetch: true
backend_db_write: true
company_persistent_write: already_completed
department_persistent_write: true
organization_persistent_write: false
ledger_persistent_write: false
review_action: false
csv_import: false
workflow_start: false
live_aiworkeros_call: false
git_push: false

## 目的

Boss department persistent write OK を受け、company persistent write smoke 済みの company_id に紐づけて、department persistent write smoke を1件だけ実行する。

## 佐藤レビュー

DB担当 佐藤:
- department の最小 persistent smoke のみ許可
- parent company は既存 persistent smoke company を利用
- organization / ledger の永続書き込みは次工程以降
- review / CSV / workflow / live AIWorkerOS は別承認
- RLS変更なし
- schema変更なし

## 今回の範囲

Phase JQ:
- Boss department persistent write OK record

Phase JR:
- department persistent write scope

Phase JS:
- localhost POST smoke and persisted row validation

Phase JT:
- next scope separation gate

## 実行すること

- business.aicm_company の parent company existence を確認
- business.aicm_department に smoke row を1件永続挿入
- inserted department_id を response/evidence に記録
- inserted row exists を検証
- final UI は変更しない

## 実行しないこと

- RLS APPLY
- schema change
- organization persistent write
- ledger persistent write
- review action
- CSV import
- workflow start
- live AIWorkerOS call
- git push
