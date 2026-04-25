# ============================================================
# STATIC ART OS PHASE3 AUDIT AND PROJECTION BINDING MATRIX
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 3
owner: Boss
prepared_by: Zero

audit_required_actions:
  - review decision approve
  - review decision reject
  - review decision rework_required
  - review decision restrict
  - publish marketplace
  - publish library only
  - delist
  - restrict
  - archive

projection_refresh_required_actions:
  - publish marketplace
  - publish library only
  - delist
  - restrict
  - archive
  - rights policy change later phase
  - lifecycle visibility change

repository_transaction_rules:
  - write lifecycle change and audit row in same transaction where possible
  - projection enqueue may happen after canonical write success
  - projection enqueue failure must not roll back canonical write unless policy explicitly requires it

audit_minimum_fields:
  - asset_id
  - user_id or actor source
  - event_type
  - from_state
  - to_state
  - reason_code where applicable
  - request reference
  - created_at

projection_enqueue_minimum_fields:
  - asset_id
  - targets
  - request reference
  - actor source

important_notes:
  - projection remains derived
  - audit is canonical governance trace
