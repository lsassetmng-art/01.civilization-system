# ============================================================
# LEGAL SUPPORT SUMMARY GENERATION OPERATION POLICY
# ============================================================

status: draft-formal
system: LegalSupport
layer: operations
subdomain: support

summary_generation_policy:
  - summary は相談準備品質向上のために使う
  - 結論提示ではなく整理補助とする
  - 共有前には user preview を必須にする
  - family_share 用 summary と consultation_prep 用 summary を分ける

quality_rules:
  - 事実と未確認事項を分離表示する
  - 曖昧情報を断定しない
  - 要約元データが不足している場合は不足を明示する
  - 緊急案件では summary より外部相談導線を優先してよい

plan_gating:
  free:
    enabled: false
  plus_family:
    enabled: true
