# ============================================================
# LIFE PLANNER INFRASTRUCTURE PROFILE
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: LifePlanner
schema: life
layer: 110.infrastructure
subfolder: 010.core
owner: Boss
prepared_by: Zero

infrastructure_assumptions:
  - mobile_first
  - multi_device_access
  - note_attachment_storage
  - notification_scheduler
  - app_setting_store

infra_rules:
  - 同期があっても正本境界は崩さない
  - 通知基盤は見直し管理に従属する
  - 添付保存は計画紐付けを必須とする
