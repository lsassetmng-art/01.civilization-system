# ============================================================
# ASSET PUBLISH EXACTNESS ISSUE LEDGER
# ============================================================

status: canonical-ledger
layer: implementation
domain: asset-publish
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
This ledger records issues discovered during K2 exactness review.

issue_states:
- open
- resolved
- deferred_wording_only
- deferred_sql_precision_only

issue_template:
- issue_id
- area
- title
- state
- severity
- summary
- impact
- required_decision
- resolution_note

entries:
- issue_id: K2-001
  area: archive-clip-identity
  title: confirm source precedence when both source_archive_asset_id and source_session_id exist for clip
  state: resolved
  severity: high
  summary: clip exactness allowed both references during transitional derivation flows, and precedence required explicit confirmation.
  impact: affected clip derivation logic and later DDL constraints
  required_decision: resolved
  resolution_note: archive lineage precedence confirmed by 0200230_CLIP_DUAL_SOURCE_REFERENCE_RULE_DECISION.md

- issue_id: K2-002
  area: asset-state-boundary
  title: confirm publication_state vs review_state vs governance_state boundary
  state: resolved
  severity: high
  summary: the three state families were intentionally separated and required explicit canonical boundary wording.
  impact: affected viewer projections, moderation linkage, and publish eligibility logic
  required_decision: resolved
  resolution_note: state-family boundary confirmed by 0200240_ASSET_STATE_BOUNDARY_DECISION.md

- issue_id: K2-003
  area: external-publish
  title: confirm polymorphic publish_source_type and publish_source_id contract scope
  state: resolved
  severity: high
  summary: publish source was intentionally polymorphic, but allowed source families required explicit closure.
  impact: affected API validation, SQL precision review, and runtime dispatch orchestration
  required_decision: resolved
  resolution_note: allowed source family set confirmed by 0200250_ALLOWED_PUBLISH_SOURCE_FAMILY_DECISION.md
