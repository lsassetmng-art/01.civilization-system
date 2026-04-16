# ============================================================
# TRAINING COACH DDL DRAFT README
# ============================================================

status: canonical-draft
phase: implementation-readiness
system: TrainingCoach
layer: 120.implementation/020.sql-draft
owner: Boss
prepared_by: Zero
db_reviewer: 佐藤

scope:
  - life schema 内の TrainingCoach 用 table / key / index 草案
  - 実行前レビュー用
  - まだ migration 適用前

review_focus:
  - nullability
  - foreign key 妥当性
  - unique 制約
  - finalized 後の correction event 方針
  - audit / cache table の粒度

execution_note:
  - 適用SQL化する段では psql "$DATABASE_URL" <<'SQL' 形式へ変換する
  - 今段はファイル生成のみで DB 変更は行わない
