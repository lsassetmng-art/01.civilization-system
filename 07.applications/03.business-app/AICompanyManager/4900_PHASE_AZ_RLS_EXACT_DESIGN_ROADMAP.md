# AICompanyManager Phase AZ RLS Exact Design Roadmap

phase: Phase AZ
status: rls-exact-design-started
reviewer: 佐藤（DB担当）
db_apply: false
rls_apply: false

## 目的

AICompanyManager の RLS exact design draft を作成する。

## 現在位置

- 画面OK
- DB境界固定済み
- DB exact schema draft 作成済み
- DDL refined draft 作成済み
- 今回は RLS 設計のみ

## このPhaseで作るもの

- RLS境界
- actor/access境界
- service role / AI自動処理境界
- RLS policy SQL draft
- 佐藤（DB担当）レビュー観点

## 実行しないこと

- DB WRITE
- RLS APPLY
- LIVE AIWORKEROS CALL
- psql実行
- migration適用

## 次

Phase BA:
- RLS refined review
- DDL/RLS統合前チェック
- まだDB適用しない
