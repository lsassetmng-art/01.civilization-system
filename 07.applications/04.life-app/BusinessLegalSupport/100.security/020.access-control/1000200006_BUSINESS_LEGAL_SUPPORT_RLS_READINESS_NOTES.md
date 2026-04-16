# ============================================================
# BUSINESS LEGAL SUPPORT RLS READINESS NOTES
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

rls_readiness:
  owner_side_predicates:
    - owner_user_id matches authenticated user
    - deleted_at is null for default reads
  child_table_predicates:
    - parent issue belongs to authenticated owner
    - deleted_at is null for default reads
  advisor_side_predicates_future:
    - active advisor share exists
    - requested record is inside allowed share scope
    - read-only access only

implementation_note:
  - this file is readiness only
  - actual SQL policy is not defined here
  - RLS exact statements belong to later implementation design

not_in_scope_yet:
  - shared token model
  - external consultant account lifecycle
  - cross-tenant advisor marketplace model
