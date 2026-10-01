# AICompanyManager Phase JY-KB Organization Persistent Write Smoke Roadmap

phase: Phase JY-KB
status: organization-persistent-write-smoke-started
boss_organization_persistent_write_ok: true
parent_company_id: 00000000-0000-4000-8000-1db11893cb24
parent_department_id: 00000000-0000-4000-8000-f6d6b5b3d38c
db_write: true
persistent_db_write: true
rls_apply: false
psql: true
write_api_connect: true
browser_write_fetch: true
backend_db_write: true
company_persistent_write: already_completed
department_persistent_write: already_completed
organization_persistent_write: true
ledger_persistent_write: false
review_action: false
csv_import: false
workflow_start: false
live_aiworkeros_call: false
git_push: false

## 目的

Boss organization persistent write OK を受け、persistent smoke 済みの company_id / department_id に紐づけて、organization persistent write smoke を1件だけ実行する。

## 佐藤レビュー

DB担当 佐藤:
- organization の最小 persistent smoke のみ許可
- parent company / parent department は既存 persistent smoke 行を利用
- ledger の永続書き込みは次工程以降
- review / CSV / workflow / live AIWorkerOS は別承認
- RLS変更なし
- schema変更なし

## 今回の範囲

Phase JY:
- Boss organization persistent write OK record

Phase JZ:
- organization persistent write scope

Phase KA:
- localhost POST smoke and persisted row validation

Phase KB:
- next scope separation gate

## 実行すること

- business.aicm_company の parent company existence を確認
- business.aicm_department の parent department existence を確認
- business.aicm_organization に smoke row を1件永続挿入
- inserted organization_id を response/evidence に記録
- inserted row exists を検証
- final UI は変更しない

## 実行しないこと

- RLS APPLY
- schema change
- ledger persistent write
- review action
- CSV import
- workflow start
- live AIWorkerOS call
- git push
