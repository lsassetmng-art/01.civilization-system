# AICompanyManager Phase EC-EF DB/RLS Candidates Roadmap

phase: Phase EC-EF
status: db-rls-candidates-started
db_apply: false
rls_apply: false
psql: false
real_api_connect: false
live_aiworkeros_call: false
git_push: false

## 目的

AICompanyManager の DB/RLS 適用候補を作成する。
このPhaseでは候補ファイル作成のみで、DB適用は行わない。

## 今回まとめる範囲

Phase EC:
- DDL exact apply candidate

Phase ED:
- RLS exact apply candidate

Phase EE:
- rollback candidate

Phase EF:
- 佐藤（DB担当）レビュー提出パッケージ

## 現在位置

完了済み:
- local implementation
- LocalRepository wiring
- DB/RLS pre-apply review ledger
- PERSONA_DATABASE_URL pre-apply gate
- DB apply GO/STOP decision sheet

今回:
- DB/RLS exact candidate creation

## 実行しないこと

- DB WRITE
- RLS APPLY
- psql
- REAL API CONNECT
- LIVE AIWORKEROS CALL
- git push
- migration apply

## 完了条件

- DDL exact apply candidate がある
- RLS exact apply candidate がある
- rollback candidate がある
- 佐藤レビュー提出パッケージがある
- no-apply gate がある
- 検証PASS
