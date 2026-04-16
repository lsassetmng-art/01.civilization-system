# ============================================================
# END OF LIFE PLANNER ROLE PERMISSION AND AUDIT
# ============================================================

status: canonical-draft
phase: L1-spec-placement

permission_baseline:
  owner:
    - full_access
  family_viewer:
    - view_only_in_allowed_scope
  delegated_editor:
    - edit_only_in_allowed_scope

fixed_security_rules:
  - access_audit_log は改変不可
  - high_sensitivity_category の export は owner 中心
  - digital_asset_note は viewer 向けマスキング前提
  - 共有設定変更時は再認証推奨
  - 出力時は masking_policy_json を保存する
