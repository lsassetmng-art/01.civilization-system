# ============================================================
# MONEY PLANNER DB EXACT SQL CANONICAL
# 佐藤（DB担当）レビュー前提
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 120.implementation
subdomain: db

scope:
  - schema 作成
  - table 作成
  - index 作成
  - updated_at trigger 作成
  - projection / dashboard 用 summary view 作成
  - logical delete 前提

sql_files:
  - 1200200005_MONEY_PLANNER_DB_EXACT_SQL_DDL.sql
  - 1200200006_MONEY_PLANNER_DB_EXACT_SQL_INDEX_AND_TRIGGER.sql
  - 1200200007_MONEY_PLANNER_DB_EXACT_SQL_VIEW.sql

review_rule:
  - 実DB適用前に佐藤（DB担当）レビューを前提とする

notes:
  - 金額系は numeric(18,2)
  - UUID 主キー
  - timestamptz 採用
  - deleted_at による論理削除前提
