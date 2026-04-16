# ============================================================
# BUSINESS LEGAL SUPPORT SECURITY MODEL
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 100.security
subfolder: 010.core
owner: Boss
prepared_by: Zero

security_controls:
  - owner_only_default
  - explicit_advisor_share
  - attachment_access_control
  - local_data_protection
  - export_confirmation
  - audit_hint_for_sensitive_actions

security_rules:
  - 初期状態は owner 限定
  - 共有は案件単位
  - 高機微データは自動拡散しない
