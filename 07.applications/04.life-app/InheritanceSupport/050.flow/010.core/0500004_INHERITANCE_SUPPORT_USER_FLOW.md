# ============================================================
# INHERITANCE SUPPORT USER FLOW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: InheritanceSupport
layer: 050.flow
subfolder: 010.core
owner: Boss
prepared_by: Zero

primary_flows:
  - case_intake -> family_input -> asset_liability_memo -> document_attach -> consultation_prep
  - case_intake -> will_and_gift_note -> deadline_register -> summary_output
  - inheritance_review -> family_share_judgment -> explicit_summary_share

flow_rules:
  - 最初に案件単位で受ける
  - 次に関係者、資産、負債、書類を埋める
  - 共有や相談出力は最後に明示操作で行う
