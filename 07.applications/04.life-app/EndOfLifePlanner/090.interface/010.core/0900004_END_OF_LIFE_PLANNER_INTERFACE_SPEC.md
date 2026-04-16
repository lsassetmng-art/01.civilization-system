# ============================================================
# END OF LIFE PLANNER INTERFACE SPEC
# ============================================================

status: canonical-draft
phase: L14-document-consistency-check
system: civilization-system
application_layer: 07.applications/04.life-app
app: EndOfLifePlanner
schema: life
layer: 090.interface
subfolder: 010.core
owner: Boss
prepared_by: Zero

screens:
  - dashboard
  - end_of_life_case_list
  - end_of_life_case_detail
  - preference_note_view
  - medical_care_note_view
  - asset_document_list
  - family_share_prep
  - summary_output
  - family_share_view
  - settings

ui_rules:
  - 案件中心ナビゲーション
  - 重要書類と見直し項目を強調
  - 重要度は色ではなくラベルでも表現
  - 医療/法務代替ではない表示を常設
