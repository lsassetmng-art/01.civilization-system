# AICompanyManager Phase EG-EJ Sato Self Review Roadmap

phase: Phase EG-EJ
status: sato-self-review-started
db_apply: false
rls_apply: false
psql: false
real_api_connect: false
live_aiworkeros_call: false
git_push: false

## 目的

Phase EC-EF で作成した DDL/RLS candidate を、佐藤（DB担当）へ出す前に自己点検する。

## 今回まとめる範囲

Phase EG:
- 佐藤レビュー前の自己点検

Phase EH:
- DDL/RLS candidate issue list

Phase EI:
- DB apply order plan

Phase EJ:
- final SQL split plan

## 現在位置

完了済み:
- DDL exact apply candidate
- RLS exact apply candidate
- rollback candidate
- 佐藤レビュー提出パッケージ

今回:
- apply前の自己点検と分割計画

## 実行しないこと

- DB WRITE
- RLS APPLY
- psql
- REAL API CONNECT
- LIVE AIWORKEROS CALL
- git push
- migration apply

## 完了条件

- self check がある
- issue list がある
- apply order plan がある
- final SQL split plan がある
- no-apply gate がある
- 検証PASS
