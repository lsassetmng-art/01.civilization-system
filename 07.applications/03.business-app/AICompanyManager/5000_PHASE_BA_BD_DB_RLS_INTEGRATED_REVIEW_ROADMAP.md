# AICompanyManager Phase BA-BD DB/RLS Integrated Review Roadmap

phase: Phase BA-BD
status: db-rls-integrated-review-started
reviewer: 佐藤（DB担当）
db_apply: false
rls_apply: false

## 目的

DB適用前に、DDL refined draft と RLS policy draft を統合レビューできる状態にする。

## 今回まとめる範囲

Phase BA:
- RLS refined review

Phase BB:
- membership / service role / RPC 境界整理

Phase BC:
- DDL + RLS 統合レビュー用パッケージ作成

Phase BD:
- DB/RLS適用前チェックリストと NO APPLY gate 固定

## 現在位置

完了済み:
- 画面構成OK
- push同期OK
- DB境界固定
- DB exact schema draft
- SQL DDL draft
- DDL refined draft
- RLS exact design draft

今回:
- 適用前レビュー束

## 実行しないこと

- DB WRITE
- RLS APPLY
- psql実行
- migration適用
- LIVE AIWORKEROS CALL

## 完了条件

- RLS refined canon がある
- membership/service/RPC境界がある
- DDL/RLS統合レビュー用SQL束がある
- 適用前チェックリストがある
- NO APPLY gate がある
- 検証PASS
