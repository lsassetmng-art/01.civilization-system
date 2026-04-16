# ============================================================
# BUSINESS LEGAL SUPPORT KEY AND CONSTRAINT POLICY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 040.ddl-readiness
owner: Boss
prepared_by: Zero

primary_key_policy:
  - every table uses uuid primary key
  - key name stays explicit per table
  - no composite primary key in current design

foreign_key_policy:
  business_legal_contract_item:
    - issue_id references business_legal_issue.issue_id
    - counterparty_id references business_legal_counterparty.counterparty_id nullable
  business_legal_deadline_record:
    - issue_id references business_legal_issue.issue_id
  business_legal_risk_note:
    - issue_id references business_legal_issue.issue_id
  business_legal_consultation_record:
    - issue_id references business_legal_issue.issue_id
  business_legal_attached_document:
    - issue_id references business_legal_issue.issue_id
  business_legal_checklist_item:
    - issue_id references business_legal_issue.issue_id
  business_legal_trouble_timeline:
    - issue_id references business_legal_issue.issue_id
  business_legal_advisor_share_record:
    - issue_id references business_legal_issue.issue_id

constraint_policy:
  required_text_fields:
    - title
    - issue_type
    - status
    - priority
    - counterparty.name
    - deadline_type
  enum_like_fields_use:
    - constrained text or check-ready logical set
  nullable_by_design:
    - next_action
    - contract_amount
    - currency_code
    - contact_person
    - result_note
    - revoked_at
    - deleted_at

delete_behavior_policy:
  - child rows are not hard-cascade-deleted in current design
  - logical delete is preferred over physical cascade
  - foreign key behavior should support retention and auditability
