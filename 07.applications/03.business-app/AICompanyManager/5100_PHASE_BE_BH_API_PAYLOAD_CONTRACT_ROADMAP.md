# AICompanyManager Phase BE-BH API Payload Contract Roadmap

phase: Phase BE-BH
status: api-payload-contract-started
db_apply: false
rls_apply: false
api_implementation: false

## 目的

画面OK、DB/RLS統合レビュー完了後、実DB接続前に API payload exact を固定する。

## 今回まとめる範囲

Phase BE:
- API payload exact canon

Phase BF:
- localStorage mock to DB mapping

Phase BG:
- save/load endpoint contract

Phase BH:
- CSV import endpoint / review approval endpoint contract

## 現在位置

完了済み:
- 画面構成OK
- push同期OK
- DB境界固定
- DDL refined draft
- RLS exact design
- DB/RLS integrated review package
- NO APPLY gate

今回:
- API payload / endpoint contract

## 実行しないこと

- DB WRITE
- RLS APPLY
- psql実行
- 実API実装
- LIVE AIWORKEROS CALL
- migration適用

## 完了条件

- API payload exact がある
- localStorage mock と DB table の対応がある
- save/load endpoint contract がある
- CSV import endpoint contract がある
- review approval endpoint contract がある
- API NO APPLY gate がある
- 検証PASS
