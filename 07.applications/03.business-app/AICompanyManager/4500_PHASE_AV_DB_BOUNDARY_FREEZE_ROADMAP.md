# ============================================================
# AICompanyManager Phase AV DB Boundary Freeze Roadmap
# ============================================================

app_name: AICompanyManager
phase: Phase AV
status: db-boundary-freeze-started

## 1. Purpose

画面OK後、DB設計へ進む前に DB正本境界を固定する。

## 2. Current Accepted UI

Top-level screens:

- AI企業ダッシュボード
- 部門別タスク台帳
- レビュー・承認待ち一覧

Dashboard routes:

- AI企業設定
- AI企業新規追加
- 部門詳細
- 部門新規追加
- 組織詳細
- 組織新規追加

## 3. DB Design Direction

AICompanyManager の DB は、次を正本として持つ。

- AI企業
- 会社共通ルール
- 部門
- 組織
- 組織ツリー
- ロボット配置
- 部門別タスク台帳
- 台帳CSV取込履歴
- AI自動処理状態
- レビュー・承認待ち
- 納品候補
- 承認/差し戻し履歴
- 参照ファイル/補足資料メタデータ

## 4. DB Design Non-Scope

DB設計でまだ実行しないこと:

- DB WRITE
- RLS APPLY
- LIVE AIWORKEROS CALL
- 本番API接続
- 実ファイル本体の保存設計確定

## 5. Next Phase

Phase AW:

- exact schema draft
- table list
- column list
- primary keys
- foreign keys
- status enum
- CSV import exact
- review approval exact
