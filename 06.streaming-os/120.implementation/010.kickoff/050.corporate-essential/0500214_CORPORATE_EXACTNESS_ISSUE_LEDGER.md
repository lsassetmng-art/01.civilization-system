# ============================================================
# CORPORATE EXACTNESS ISSUE LEDGER
# ============================================================

status: canonical-ledger
layer: implementation
domain: corporate-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

entries:
- issue_id: K5-001
  area: visibility-boundary
  title: confirm public channel visibility vs corporate oversight visibility boundary
  state: resolved
  severity: high
  summary: public and oversight visibility required explicit separation.
  impact: affected projections, auth/RLS, and screen semantics
  resolution_note: resolved by 0500230_PUBLIC_OVERSIGHT_VISIBILITY_BOUNDARY_DECISION.md

- issue_id: K5-002
  area: authority-boundary
  title: confirm affiliation vs ownership mutation authority boundary
  state: resolved
  severity: high
  summary: affiliation must not widen into ownership mutation power.
  impact: affected mutate rules and oversight policies
  resolution_note: resolved by 0500240_AFFILIATION_OWNERSHIP_AUTHORITY_BOUNDARY_DECISION.md

- issue_id: K5-003
  area: identity-boundary
  title: confirm affiliated streamer reference identity boundary
  state: resolved
  severity: medium
  summary: affiliation reference required explicit separation from channel identity.
  impact: affected payload semantics and table interpretation
  resolution_note: resolved by 0500250_AFFILIATED_STREAMER_REFERENCE_IDENTITY_DECISION.md
