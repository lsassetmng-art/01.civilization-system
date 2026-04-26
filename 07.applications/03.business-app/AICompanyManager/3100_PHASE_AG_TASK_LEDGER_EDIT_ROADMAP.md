# ============================================================
# AICompanyManager Phase AG Task Ledger Edit Roadmap
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase AG
status: task-ledger-edit-started
owner: Boss
prepared_by: Zero

## 1. Purpose

部門別タスク台帳は、追加・CSV取込だけでなく、既存行の変更も可能にする。

## 2. Required Operations

- 台帳行の追加
- CSV取込
- CSVプレビュー
- 既存台帳行の選択
- 既存台帳行の変更
- 既存台帳行の削除
- 変更後の保存
- 部門受信箱・仕事パケットとの紐付け維持

## 3. Editable Fields

- 成果物名
- タスク名
- 仕事種別
- 担当ロール
- 担当ロボット
- 参照ファイル
- 補足資料
- 適用ルール
- 状態
- 優先度
- 期限
- 補足メモ
- 引き継ぎリンク

## 4. Safety

DB WRITE:
- NOT EXECUTED

RLS APPLY:
- NOT EXECUTED

LIVE AIWORKEROS CALL:
- NOT EXECUTED

GIT PUSH:
- NOT EXECUTED
