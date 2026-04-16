# ============================================================
# END OF LIFE PLANNER SECURITY MODEL
# ============================================================

status: canonical-draft
phase: L14-document-consistency-check
system: civilization-system
application_layer: 07.applications/04.life-app
app: EndOfLifePlanner
schema: life
layer: 100.security
subfolder: 010.core
owner: Boss
prepared_by: Zero

security_controls:
  - owner_only_default
  - explicit_family_share
  - attachment_access_control
  - local_data_protection
  - export_confirmation
  - sensitive_document_warning

security_rules:
  - 初期状態は owner 限定
  - 共有は案件単位
  - 高機微データは自動拡散しない
