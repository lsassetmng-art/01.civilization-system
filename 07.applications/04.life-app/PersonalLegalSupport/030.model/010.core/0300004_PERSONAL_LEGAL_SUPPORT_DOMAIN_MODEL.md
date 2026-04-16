# ============================================================
# PERSONAL LEGAL SUPPORT DOMAIN MODEL
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: PersonalLegalSupport
layer: 030.model
subfolder: 010.core
owner: Boss
prepared_by: Zero

entities:
  - personal_legal_issue
  - personal_contract_item
  - deadline_record
  - related_party
  - risk_note
  - consultation_record
  - attached_document
  - legal_checklist
  - trouble_timeline
  - family_share_record

model_rules:
  - 案件が中心で、契約・期限・メモ・添付がぶら下がる
  - 相手方は案件横断で再利用できる
  - 家族共有は正本移譲ではなく共有ビューとして扱う
