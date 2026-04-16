# ============================================================
# INHERITANCE SUPPORT RUNTIME BEHAVIOR
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: InheritanceSupport
layer: 040.runtime
subfolder: 010.core
owner: Boss
prepared_by: Zero

runtime_events:
  - create_inheritance_case
  - register_family_member
  - add_asset_note
  - add_liability_note
  - attach_document
  - register_deadline
  - generate_consultation_summary
  - launch_ai_support
  - share_family_summary

runtime_rules:
  - 通知は in_app を基本とする
  - 相続結論の自動判断はしない
  - AI は整理支援時のみ動作する
