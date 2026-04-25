# ============================================================
# STATIC ART OS PHASE3 REPOSITORY EXTENSION NOTES
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 3 repository extension
owner: Boss
prepared_by: Zero

extension_targets:
  asset_repository:
    - replace placeholder self check with deterministic query-based checks
    - persist review request
    - persist review decision
    - update lifecycle for approve/reject/rework/restrict
    - implement publish marketplace
    - implement publish library only
    - implement delist
    - implement restrict
    - implement archive
    - bind audit event writes transactionally where needed

  projection_repository:
    - replace skeleton refresh enqueue with real queue/write mechanism
    - keep projection enqueue outside canonical source semantics

required_transaction_boundaries:
  - review decision + audit write
  - publish action + audit write
  - delist/restrict/archive + audit write

important_rules:
  - invalid lifecycle transitions must raise conflict
  - archived remains terminal
  - restricted remains stronger than delisted
  - PERSONA_DATABASE_URL remains Persona-side DB target
