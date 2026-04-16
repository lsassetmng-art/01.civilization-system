# ============================================================
# PERSONAL LEGAL SUPPORT INTERFACE SPEC
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: PersonalLegalSupport
layer: 090.interface
subfolder: 010.core
owner: Boss
prepared_by: Zero

screens:
  - dashboard
  - issue_list
  - issue_detail
  - contract_list
  - deadline_list
  - consultation_prep
  - summary_output
  - family_share_view
  - settings

ui_rules:
  - 案件中心ナビゲーション
  - 期限強調
  - リスクは色ではなくラベルでも表現
  - 法的助言ではない表示を常設
