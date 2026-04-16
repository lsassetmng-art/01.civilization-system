# ============================================================
# LEGAL SUPPORT AUDIT LOG EXACT
# ============================================================

status: draft-formal
system: LegalSupport
layer: meta
subdomain: audit
schema: life

audit_entity:
  table_name: life.legal_support_audit_log

fields:
  - audit_log_id: uuid
  - actor_user_id: uuid
  - legal_case_id: uuid|null
  - entity_name: text
  - entity_id: uuid|null
  - action_type: text
  - action_summary: text|null
  - before_snapshot: jsonb|null
  - after_snapshot: jsonb|null
  - created_at: timestamptz

action_types:
  - create_legal_case
  - update_legal_case
  - archive_legal_case
  - reopen_legal_case
  - duplicate_legal_case
  - create_child
  - update_child
  - soft_delete_child
  - restore_child
  - enable_family_share
  - disable_family_share
  - create_export_bundle

logging_rules:
  - actor_user_id is always required
  - legal_case_id is required for case-bound actions
  - before_snapshot / after_snapshot は重すぎる場合 summary 化可
  - export 実行時は included_sections と target_scope を保持する
  - family share 切替時は visibility_scope 変化を保持する
