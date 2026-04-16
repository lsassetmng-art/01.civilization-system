# ============================================================
# INHERITANCE SUPPORT INTERFACE SPEC
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: InheritanceSupport
layer: 090.interface
subfolder: 010.core
owner: Boss
prepared_by: Zero

screens:
  - dashboard
  - inheritance_case_list
  - inheritance_case_detail
  - family_member_list
  - asset_liability_list
  - document_list
  - consultation_prep
  - summary_output
  - family_share_view
  - settings

ui_rules:
  - 案件中心ナビゲーション
  - 重要書類と期限を強調
  - リスクは色ではなくラベルでも表現
  - 法的助言ではない表示を常設
