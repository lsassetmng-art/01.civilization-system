# ============================================================
# AICompanyManager Accepted Screen Navigation Canon
# ============================================================

phase: Phase AP
status: accepted-screen-navigation-canon

## 1. User-Facing Top-Level Screens

Keep only:

- AI企業ダッシュボード
- 部門別タスク台帳
- レビュー・承認待ち一覧

Do not show as top-level tabs:

- AI企業設定
- AI企業新規追加
- 会社共通ルール
- 仕事操作
- 部門受信箱
- CSV作成テンプレ
- 引き継ぎ

## 2. AI企業ダッシュボード

AI企業ダッシュボード is the top page.

It contains:

- AI企業選択
- 会社概要
- 全体状況
- 部門一覧
- 組織一覧
- 操作入口

Button rules:

- 会社概要 card:
  - AI企業設定
  - AI企業新規追加

- 部門一覧 card:
  - 部門詳細
  - 新規追加

- 組織一覧 card:
  - 組織詳細
  - 新規追加

## 3. AI企業設定

AI企業設定 is reached from AI企業ダッシュボード.

It handles:

- company update
- company delete
- company common rules

Company add is not handled here.

## 4. AI企業新規追加

AI企業新規追加 is a separate screen.

It handles:

- company add only

## 5. 部門詳細

部門詳細 handles:

- department selection
- department display
- department update
- department delete

Only department add is separated to a dedicated screen.

## 6. 組織詳細

組織詳細 handles:

- organization selection
- organization display
- organization update
- organization delete
- robot placement update

Only organization add is separated to a dedicated screen.

## 7. 部門別タスク台帳

部門別タスク台帳 is the Manager intake ledger.

It handles:

- ledger list
- ledger add
- ledger update
- ledger delete
- CSV preview
- CSV import
- CSV template / prompt copy

## 8. レビュー・承認待ち一覧

レビュー・承認待ち一覧 handles:

- AI auto-reviewed items
- delivery candidates
- approval waiting items
- rejection
- final delivery approval

## 9. Automatic Workflow

Routine user operation is not needed for:

- Manager breakdown
- Leader allocation
- Worker deliverable creation
- AI auto review
