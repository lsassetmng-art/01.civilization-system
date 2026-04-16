# ============================================================
# END OF LIFE PLANNER USER FLOW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: EndOfLifePlanner
schema: life
layer: 050.flow
subfolder: 010.core
owner: Boss
prepared_by: Zero

primary_flows:
  - case_intake -> preference_input -> medical_care_note -> asset_document_note -> family_share_prep
  - case_intake -> contact_input -> consultation_note -> summary_output
  - end_of_life_review -> inheritance_link_judgment -> explicit_bridge_to_inheritance_support

flow_rules:
  - 最初に案件単位で受ける
  - 次に希望事項、医療/介護、資産、書類、連絡先を埋める
  - 共有や連携は最後に明示操作で行う
