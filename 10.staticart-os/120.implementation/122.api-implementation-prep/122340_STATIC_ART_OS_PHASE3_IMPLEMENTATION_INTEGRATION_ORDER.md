# ============================================================
# STATIC ART OS PHASE3 IMPLEMENTATION INTEGRATION ORDER
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 3
owner: Boss
prepared_by: Zero

recommended_order:
  1:
    - add lifecycle transition helper
  2:
    - add governance SQL skeletons
  3:
    - bind self-check deterministic issue generation
  4:
    - bind review request persistence
  5:
    - bind review decision persistence
  6:
    - bind publish marketplace and library-only persistence
  7:
    - bind delist/restrict/archive persistence
  8:
    - bind audit writes
  9:
    - bind projection enqueue
  10:
    - run phase3 smoke/check pack

transaction_guidance:
  - review decision and audit write should share transaction boundary
  - publish action and audit write should share transaction boundary
  - delist/restrict/archive and audit write should share transaction boundary
  - projection enqueue happens after canonical write success unless stricter rollback policy is introduced later

important_rules:
  - invalid lifecycle transitions must return canonical conflict
  - review_pending must not be bypassed
  - archived must not return to published state
  - projection enqueue is not canonical state
