# AICompanyManager Phase IS-IV Ledger Test Restore No Python Roadmap

phase: Phase IS-IV repair
status: ledger-test-restore-no-python-started
db_write: false
db_write_persisted: false
transaction: none
rls_apply: false
psql: false
write_api_connect: false
browser_write_fetch: false
backend_db_write: false
review_action: false
csv_import: false
workflow_start: false
live_aiworkeros_call: false
git_push: false

## 目的

ledger rollback smoke の本体修正後、前回失敗で作成されていなかった検証テストを再生成する。

## 方針

- Python 不使用
- DB接続なし
- DB書き込みなし
- 既存成果物と server JS の静的検証のみ
- chmod で実行可能にする
