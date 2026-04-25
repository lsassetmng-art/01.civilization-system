# ============================================================
# AICompanyManager Phase C Roadmap
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase C
status: db-review-package-started
owner: Boss
prepared_by: Zero
db_reviewer: 佐藤（DB担当）

## 1. Current Position

Phase A:
- app skeleton completed
- business / review / delivery flow canon completed

Phase B:
- DB exact design completed
- API / bridge payload completed
- state enum completed
- local queue payload completed
- audit / history model completed

Phase C:
- DB DDL Design Review Package を作成する
- 佐藤（DB担当）レビュー用のDDL候補を作る
- DB適用はまだ行わない

## 2. Phase C Scope

Phase C の対象:
- DDL candidate
- index candidate
- RLS candidate
- DB apply checklist
- Sato DB review memo
- Phase C completion report
- integrated design regeneration

## 3. Out of Scope

Phase C では以下をしない。

- 実DBへの適用
- psql実行
- migration確定
- RLS本番有効化
- API実装
- UI実装

## 4. Completion Conditions

- DDL候補ファイルが作成される
- Index候補が作成される
- RLS候補が作成される
- DB適用前チェックリストが作成される
- 佐藤（DB担当）レビュー観点が明記される
- 統合版が再生成される

## 5. Next Phase

Phase D:
- DB apply one-block preparation
- ただし実行は Boss の明示GO後
- SQL実行時は必ず方法Aを使う
- psql "$DATABASE_URL" <<'SQL'
