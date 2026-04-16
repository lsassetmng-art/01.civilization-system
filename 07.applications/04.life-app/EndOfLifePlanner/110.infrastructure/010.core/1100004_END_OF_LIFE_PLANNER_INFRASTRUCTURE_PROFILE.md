# ============================================================
# END OF LIFE PLANNER INFRASTRUCTURE PROFILE
# ============================================================

status: canonical-draft
phase: L14-document-consistency-check
system: civilization-system
application_layer: 07.applications/04.life-app
app: EndOfLifePlanner
schema: life
layer: 110.infrastructure
subfolder: 010.core
owner: Boss
prepared_by: Zero

infrastructure_assumptions:
  - mobile_first
  - multi_device_access
  - document_attachment_storage
  - notification_scheduler
  - app_setting_store

infra_rules:
  - 同期があっても正本境界は崩さない
  - 通知基盤は見直し管理に従属する
  - 添付保存は案件紐付けを必須とする
