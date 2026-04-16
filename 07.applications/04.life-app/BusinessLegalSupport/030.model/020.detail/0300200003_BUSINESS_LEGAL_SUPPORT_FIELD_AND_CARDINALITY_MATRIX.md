# ============================================================
# BUSINESS LEGAL SUPPORT FIELD AND CARDINALITY MATRIX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 020.detail
owner: Boss
prepared_by: Zero

cardinality:
  - one legal_issue has many contract_item
  - one legal_issue has many deadline_record
  - one legal_issue has many risk_note
  - one legal_issue has many consultation_record
  - one legal_issue has many attached_document
  - one legal_issue has many legal_checklist
  - one legal_issue has many trouble_timeline
  - one legal_issue has many advisor_share_record
  - one counterparty can be linked from many contract_item
  - one counterparty can be referenced by many legal_issue through contract or note

relation_rules:
  - issue_id is the main aggregation key
  - related_type + related_id is used only for optional secondary linkage
  - counterparty is reusable across issues
  - attachment can belong to issue root or a specific child object
  - share record never changes ownership of source data

required_vs_optional:
  required:
    - legal_issue.title
    - legal_issue.issue_type
    - legal_issue.status
    - contract_item.title
    - deadline_record.deadline_type
    - deadline_record.due_at
    - counterparty.name
  optional:
    - contract_item.contract_amount
    - counterparty.contact_person
    - consultation_record.result_note
    - risk_note.mitigation_note
    - advisor_share_record.revoked_at
