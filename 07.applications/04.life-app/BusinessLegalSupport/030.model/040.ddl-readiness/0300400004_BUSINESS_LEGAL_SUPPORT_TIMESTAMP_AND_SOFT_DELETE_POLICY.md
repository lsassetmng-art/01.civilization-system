# ============================================================
# BUSINESS LEGAL SUPPORT TIMESTAMP AND SOFT DELETE POLICY
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

timestamp_columns:
  standard_required:
    - created_at
    - updated_at
  conditional:
    - archived_at
    - completed_at
    - consulted_at
    - uploaded_at
    - revoked_at
    - last_reviewed_at
  soft_delete:
    - deleted_at

policy:
  - created_at required on insert
  - updated_at required on every update
  - deleted_at null means active from delete perspective
  - archived_at is visibility state, not delete state
  - completed_at applies only to completion-based records
  - revoked_at applies only to share revocation

application_rules:
  - archive and delete must not be conflated
  - default reads exclude deleted_at not null
  - owner archive views may include archived_at not null
  - advisor visibility must exclude deleted rows and revoked shares
