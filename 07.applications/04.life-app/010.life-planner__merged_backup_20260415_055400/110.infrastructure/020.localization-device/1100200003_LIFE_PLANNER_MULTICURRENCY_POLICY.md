# ============================================================
# LIFE PLANNER MULTICURRENCY POLICY
# ============================================================

status: draft
system: LifePlanner
layer: 110.infrastructure
subfolder: 020.localization-device
owner: Boss
prepared_by: Zero
schema: life

policy:
  - 保存は amount_minor + currency_code を正とする
  - 表示時のみフォーマット文字列を生成する
  - 異通貨の安易な自動合算はしない
  - 合算が必要な場合は通貨前提を明示する

supported_usage:
  - goal estimated cost
  - event estimated cost
  - scenario cost summary
  - domain dashboard cost summary

display_rules:
  - single currency total only when same currency
  - mixed currency case shows separated totals or explicit conversion note
  - currency switch display is UI concern, not storage concern
