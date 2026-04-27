# AICompanyManager Phase IS-IV Ledger Priority Auto Repair No Python Roadmap

phase: Phase IS-IV repair
status: ledger-priority-auto-repair-no-python-started
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

priority CHECK constraint から許容値を自動取得し、ledger write rollback smoke を修正する。

## 佐藤レビュー

- DB担当 佐藤: rollback transaction の smoke のみ許可
- 永続DB書き込みなし
- RLS変更なし
- schema変更なし
- review / CSV / workflow / live AIWorkerOS は対象外
