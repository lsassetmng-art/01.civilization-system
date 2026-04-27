# AICompanyManager Phase IC-IF Department Write API Rollback Smoke Roadmap

phase: Phase IC-IF
status: department-write-api-rollback-smoke-started
db_write: true
db_write_persisted: false
transaction: rollback
rls_apply: false
psql: true
write_api_connect: true
browser_write_fetch: true
backend_db_write: true
company_support_row: rollback_only
department_write: true
organization_write: false
ledger_write: false
review_action: false
csv_import: false
workflow_start: false
live_aiworkeros_call: false
git_push: false

## 目的

company write rollback smoke PASS 後、次スコープとして department write API rollback smoke を実行する。

## 今回の範囲

Phase IC:
- department write rollback scope

Phase ID:
- localhost POST smoke

Phase IE:
- rollback validation

Phase IF:
- next scope separation gate

## 実行すること

- rollback transaction 内で smoke company support row を作る
- rollback transaction 内で department insert smoke を行う
- transaction は必ず rollback
- 永続DB書き込みは残さない

## 実行しないこと

- persistent DB write
- organization write
- ledger write
- review action
- CSV import
- workflow start
- live AIWorkerOS call
- git push
