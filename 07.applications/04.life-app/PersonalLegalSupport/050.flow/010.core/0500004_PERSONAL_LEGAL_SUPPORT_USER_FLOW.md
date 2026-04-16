# ============================================================
# PERSONAL LEGAL SUPPORT USER FLOW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: PersonalLegalSupport
layer: 050.flow
subfolder: 010.core
owner: Boss
prepared_by: Zero

primary_flows:
  - issue_intake -> fact_memo -> contract_check -> deadline_register -> risk_note -> consultation_prep
  - issue_intake -> timeline_record -> evidence_attach -> summary_output
  - personal_case_review -> business_case_judgment -> explicit_bridge_to_business_legal

flow_rules:
  - 最初に案件単位で受ける
  - 次に事実、期限、相手方、添付を埋める
  - 共有や橋渡しは最後に明示操作で行う
