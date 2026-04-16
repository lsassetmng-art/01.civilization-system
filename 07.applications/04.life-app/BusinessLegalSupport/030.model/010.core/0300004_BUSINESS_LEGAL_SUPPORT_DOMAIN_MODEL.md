# ============================================================
# BUSINESS LEGAL SUPPORT DOMAIN MODEL
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 030.model
subfolder: 010.core
owner: Boss
prepared_by: Zero

entities:
  - legal_issue
  - contract_item
  - deadline_record
  - counterparty
  - risk_note
  - consultation_record
  - attached_document
  - legal_checklist
  - trouble_timeline
  - advisor_share_record

model_rules:
  - 案件が中心で、契約・期限・メモ・添付がぶら下がる
  - 取引先は案件横断で再利用できる
  - advisor_viewer は正本移譲ではなく共有ビューとして扱う
