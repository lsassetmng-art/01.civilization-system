# ============================================================
# FOUNDATION SQL PRECISION FIRST-PASS DECISION CANDIDATES
# ============================================================

status: canonical-first-pass-candidates
layer: implementation
domain: foundation
system: StreamingOS
prepared_by: Zero
owner: Boss

candidate_decisions:

candidate_01:
- title: principal_id type
- candidate: uuid
- reason: stable cross-domain canonical identifier

candidate_02:
- title: handle uniqueness strategy
- candidate: normalized case-insensitive unique constraint/index path
- reason: aligns public lookup expectations and reduces visual duplicates

candidate_03:
- title: principal and session state storage
- candidate: text plus check constraints
- reason: additive change is easier than early enum lock-in

candidate_04:
- title: session time field type
- candidate: timestamptz
- reason: safer cross-platform scheduling semantics

candidate_05:
- title: publish_ready_flag default
- candidate: false
- reason: readiness must be earned explicitly

candidate_06:
- title: governance_block_flag default
- candidate: false
- reason: governance block is exceptional state

candidate_07:
- title: first index set
- candidate:
  - principals: normalized handle uniqueness
  - sessions: principal_id
  - sessions: lifecycle_state, scheduled_start_at
  - sessions: scheduled_start_at
- reason: enough for first review without over-indexing

candidate_08:
- title: policy/projection approach
- candidate: projection-safe views for public and oversight-safe subsets
- reason: avoids accidental unrestricted base-table reads
