# ============================================================
# END OF LIFE PLANNER LOGICAL STORAGE AND EXPORT INFRA
# ============================================================

status: canonical-draft
phase: L1-spec-placement

storage_policy:
  - 高機微情報は sensitivity_class に従って扱う
  - digital_asset_note は所在整理中心
  - パスワード平文保存は禁止
  - deleted_logical を基本とする

export_policy:
  - handoff_document は生成履歴を持つ
  - output_format は pdf または in_app_view
  - masking_policy_json を必須保存する
