# AICompanyManager Phase AX SQL DDL Draft Roadmap

phase: Phase AX
status: sql-ddl-draft-started
reviewer: 佐藤（DB担当）
db_apply: false

## 目的

Phase AW のDB exact schema draftをもとに、佐藤（DB担当）レビュー用のSQL DDL draftを作成する。

## 現在位置

- 画面OK
- Push sync済み
- DB境界固定済み
- DB exact schema draft作成済み
- 今回はSQL DDL draft作成のみ

## 実行しないこと

- DB WRITE
- RLS APPLY
- LIVE AIWORKEROS CALL
- psql実行
- 本番migration適用

## 完了条件

- DDL draft SQLが存在する
- 主要14テーブルが定義されている
- enum相当のCHECK制約候補がある
- 佐藤（DB担当）レビュー観点がある
