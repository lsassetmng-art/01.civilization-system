# ============================================================
# BUSINESS LEGAL SUPPORT READ WRITE BOUNDARY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 020.architecture
subfolder: 020.detail
owner: Boss
prepared_by: Zero

write_boundary:
  owner_can_write:
    - legal_issue
    - contract_item
    - deadline_record
    - counterparty
    - risk_note
    - consultation_record
    - attachment metadata
    - checklist item
    - timeline event
    - share record creation
    - handoff draft creation

read_boundary:
  owner_can_read:
    - all owned records
  advisor_viewer_can_read:
    - only explicitly shared scope
    - read-only only

never_write_here:
  - enterprise legal truth
  - ERP official transaction
  - formal company approval result
