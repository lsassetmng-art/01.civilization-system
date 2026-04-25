# ============================================================
# MONETIZATION REACTION RANKING AD EXACTNESS ISSUE LEDGER
# ============================================================

status: canonical-ledger
layer: implementation
domain: monetization-reaction-ranking-ad
system: StreamingOS
prepared_by: Zero
owner: Boss

entries:
- issue_id: K6-001
  area: monetization-visibility
  title: confirm raw monetization event visibility boundary
  state: resolved
  severity: high
  summary: raw tip events and support monetization states required explicit non-public boundary.
  impact: affected auth/RLS and creator-facing summary semantics
  resolution_note: resolved by 0600230_MONETIZATION_RAW_EVENT_VISIBILITY_DECISION.md

- issue_id: K6-002
  area: ranking-boundary
  title: confirm ranking projection vs ranking generation control boundary
  state: resolved
  severity: high
  summary: ranking outputs and ranking generation control required explicit separation.
  impact: affected runtime boundaries and public projection semantics
  resolution_note: resolved by 0600240_RANKING_PROJECTION_GENERATION_BOUNDARY_DECISION.md

- issue_id: K6-003
  area: ad-boundary
  title: confirm ad candidate projection vs ad control-plane boundary
  state: resolved
  severity: high
  summary: ad candidate list required explicit separation from control-plane internals.
  impact: affected auth/RLS, runtime control boundaries, and payload semantics
  resolution_note: resolved by 0600250_AD_PROJECTION_CONTROL_PLANE_BOUNDARY_DECISION.md
