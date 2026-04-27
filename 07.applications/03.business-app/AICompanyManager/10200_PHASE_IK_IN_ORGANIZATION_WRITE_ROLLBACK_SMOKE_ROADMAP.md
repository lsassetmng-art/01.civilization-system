# AICompanyManager Phase IK-IN Organization Write API Rollback Smoke Roadmap

phase: Phase IK-IN
status: organization-write-api-rollback-smoke-started
db_write: true
db_write_persisted: false
transaction: rollback
rls_apply: false
psql: true
write_api_connect: true
browser_write_fetch: true
backend_db_write: true
company_support_row: rollback_only
department_support_row: rollback_only
organization_write: true
ledger_write: false
review_action: false
csv_import: false
workflow_start: false
live_aiworkeros_call: false
git_push: false

## 目的

department write rollback smoke PASS 後、次スコープとして organization write API rollback smoke を実行する。

## 今回の範囲

Phase IK:
- organization write rollback scope

Phase IL:
- localhost POST smoke

Phase IM:
- rollback validation

Phase IN:
- next scope separation gate

## 実行すること

- rollback transaction 内で smoke company support row を作る
- rollback transaction 内で smoke department support row を作る
- rollback transaction 内で organization insert smoke を行う
- transaction は必ず rollback
- 永続DB書き込みは残さない

## 実行しないこと

- persistent DB write
- ledger write
- review action
- CSV import
- workflow start
- live AIWorkerOS call
- git push
