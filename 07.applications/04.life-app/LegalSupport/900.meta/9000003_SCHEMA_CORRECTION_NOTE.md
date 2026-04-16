# ============================================================
# SCHEMA CORRECTION NOTE
# LegalSupport
# ============================================================

status: canonical-draft
phase: design-only

correction:
  - LegalSupport の設計書におけるスキーマ前提は life とする
  - app_legal_support は仮置きであり、正本ではない
  - 今後の設計書では schema_name は life で統一する

scope:
  - 設計書のみ
  - 実装、DDL、SQL にはまだ入らない

note:
  - テーブル責務や entity 責務の整理は維持する
  - ただし所属スキーマは life 前提に読み替える
