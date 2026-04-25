# ============================================================
# CREATOR VIEWER EXACTNESS ISSUE LEDGER
# ============================================================

status: canonical-ledger
layer: implementation
domain: creator-viewer-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

entries:
- issue_id: K3-001
  area: responsibility-boundary
  title: confirm creator control-plane and viewer continuity separation
  state: resolved
  severity: high
  summary: creator-side control objects and viewer-side continuity objects required explicit separation.
  impact: affected payload semantics, auth boundaries, and screen mapping
  resolution_note: resolved by 0300230_CREATOR_VIEWER_RESPONSIBILITY_BOUNDARY_DECISION.md

- issue_id: K3-002
  area: continuity-identity
  title: confirm playlist identity vs watch queue identity
  state: resolved
  severity: high
  summary: both objects manage content collections but serve different meanings.
  impact: affected table constraints, screen mapping, and runtime repair logic
  resolution_note: resolved by 0300240_PLAYLIST_WATCH_QUEUE_IDENTITY_DECISION.md

- issue_id: K3-003
  area: projection-boundary
  title: confirm creator analytics projection vs viewer discovery projection boundary
  state: resolved
  severity: medium
  summary: analytics and discovery are both projections but have different audiences and privacy rules.
  impact: affected auth / RLS and transport semantics
  resolution_note: resolved by 0300250_ANALYTICS_DISCOVERY_PROJECTION_BOUNDARY_DECISION.md
