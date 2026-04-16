# ============================================================
# BUSINESS LEGAL SUPPORT VISIBILITY AND SOFT DELETE RULES
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 100.security
subfolder: 020.access-control
owner: Boss
prepared_by: Zero

visibility_rules:
  active_records:
    - visible to owner by default
    - visible to advisor_viewer only when active share exists

  archived_records:
    - visible to owner in archive views
    - not visible to advisor_viewer by default unless explicitly included in active share handling policy

  soft_deleted_records:
    - hidden from default owner views
    - hidden from advisor_viewer views
    - retained for logical consistency until purge policy is defined elsewhere

query_assumptions:
  owner_default_query:
    - deleted_at is null
  advisor_default_query:
    - deleted_at is null
    - active share exists
    - record is inside allowed share scope

notes:
  - archive is not delete
  - soft delete is not ownership transfer
  - share revocation and soft delete are separate concepts
