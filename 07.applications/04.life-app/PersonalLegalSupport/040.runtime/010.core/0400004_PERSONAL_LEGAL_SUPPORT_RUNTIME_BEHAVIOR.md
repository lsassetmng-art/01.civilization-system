# ============================================================
# PERSONAL LEGAL SUPPORT RUNTIME BEHAVIOR
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: PersonalLegalSupport
layer: 040.runtime
subfolder: 010.core
owner: Boss
prepared_by: Zero

runtime_events:
  - create_issue
  - attach_document
  - register_deadline
  - update_risk_note
  - generate_consultation_summary
  - trigger_deadline_notification
  - launch_ai_support
  - share_family_summary

runtime_rules:
  - 通知は in_app を基本とする
  - 高リスクでも自動判断はしない
  - AI は整理支援時のみ動作する
