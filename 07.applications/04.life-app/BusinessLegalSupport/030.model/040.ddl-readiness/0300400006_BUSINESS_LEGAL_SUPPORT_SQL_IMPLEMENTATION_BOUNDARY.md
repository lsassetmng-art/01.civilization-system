# ============================================================
# BUSINESS LEGAL SUPPORT SQL IMPLEMENTATION BOUNDARY
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

current_phase_boundary:
  - this phase fixes DDL readiness only
  - actual SQL is intentionally deferred
  - RLS exact statements are intentionally deferred
  - trigger exact statements are intentionally deferred

next_sql_phase_inputs:
  - logical table catalog
  - logical table definitions
  - column standard
  - access control matrix
  - API payload exact contract

must_preserve_when_sql_starts:
  - schema stays life
  - owner is source controller
  - advisor_viewer stays read-only
  - soft delete remains first-class
  - ERP direct write stays out of scope
