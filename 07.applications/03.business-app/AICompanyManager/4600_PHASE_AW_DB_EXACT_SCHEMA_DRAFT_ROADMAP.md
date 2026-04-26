# AICompanyManager Phase AW DB Exact Schema Draft Roadmap

phase: Phase AW
status: db-exact-schema-draft-started
reviewer: 佐藤（DB担当）
db_apply: false

## 目的

AICompanyManager のDB exact schema draftを作成する。

## 前提

画面構成は受入済み。

トップ画面:
- AI企業ダッシュボード
- 部門別タスク台帳
- レビュー・承認待ち一覧

## このPhaseで作るもの

- DB境界
- テーブル一覧
- カラム一覧
- ステータス値
- CSV取込仕様
- レビュー承認仕様

## 実行しないこと

- DB WRITE
- RLS APPLY
- LIVE AIWORKEROS CALL
- 本番API接続
