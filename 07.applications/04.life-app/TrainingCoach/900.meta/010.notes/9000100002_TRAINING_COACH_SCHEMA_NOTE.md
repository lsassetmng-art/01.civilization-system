# ============================================================
# TRAINING COACH SCHEMA NOTE
# ============================================================

status: canonical-draft
phase: implementation-readiness
system: TrainingCoach
layer: 900.meta
owner: Boss
prepared_by: Zero

decision:
  - TrainingCoach の schema は life を正とする

reason:
  - 本アプリは LifeOS 領域に属する
  - 健康・習慣・生活支援データは life で管理する
  - Business / ERP 側へ保存責務を持たせない

impact:
  - 今後の exact payload / 実装設計 / DB設計は life schema 前提で統一する
