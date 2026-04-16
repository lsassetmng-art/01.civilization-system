# ============================================================
# BUSINESS LEGAL SUPPORT TABLE CREATION ORDER
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

creation_order:
  phase_1_root_tables:
    - life.business_legal_issue
    - life.business_legal_counterparty

  phase_2_child_tables:
    - life.business_legal_contract_item
    - life.business_legal_deadline_record
    - life.business_legal_risk_note
    - life.business_legal_consultation_record
    - life.business_legal_attached_document
    - life.business_legal_checklist_item
    - life.business_legal_trouble_timeline
    - life.business_legal_advisor_share_record

ordering_reason:
  - issue is the main parent table
  - counterparty is reusable across issues and contracts
  - all child tables depend on issue_id
  - contract_item additionally depends on counterparty_id when linked

future_safe_order:
  - create tables first
  - add foreign keys after base tables exist
  - add indexes after tables and keys
  - add RLS after basic CRUD verification
