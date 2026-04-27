# AICompanyManager Phase IS-IV Ledger Priority Repair Roadmap

phase: Phase IS-IV repair
status: ledger-priority-repair-started
db_write: true
db_write_persisted: false
transaction: rollback
rls_apply: false
psql: true
write_api_connect: true
browser_write_fetch: true
backend_db_write: true
review_action: false
csv_import: false
workflow_start: false
live_aiworkeros_call: false
git_push: false

## 目的

ledger write rollback smoke の priority CHECK constraint failure を修正する。

## 原因

business.aicm_department_task_ledger.priority に normal を入れたが、priority check constraint に合わなかった。

## 修正方針

- priority が文字列型の場合は medium を使う
- rollback smoke の範囲は維持
- 永続DB書き込みは残さない
- review / CSV / workflow / live AIWorkerOS は実行しない
