# ============================================================
# END OF LIFE PLANNER RUNTIME BEHAVIOR
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: EndOfLifePlanner
schema: life
layer: 040.runtime
subfolder: 010.core
owner: Boss
prepared_by: Zero

runtime_events:
  - create_end_of_life_case
  - add_preference_note
  - add_medical_care_note
  - add_asset_note
  - add_contact_record
  - attach_document
  - generate_family_summary
  - launch_ai_support
  - trigger_review_notification

runtime_rules:
  - 通知は in_app を基本とする
  - 医療/法務結論の自動判断はしない
  - AI は整理支援時のみ動作する
