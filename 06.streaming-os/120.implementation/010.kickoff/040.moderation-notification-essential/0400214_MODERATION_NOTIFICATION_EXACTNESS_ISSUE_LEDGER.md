# ============================================================
# MODERATION NOTIFICATION EXACTNESS ISSUE LEDGER
# ============================================================

status: canonical-ledger
layer: implementation
domain: moderation-notification-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

entries:
- issue_id: K4-001
  area: boundary
  title: confirm review pipeline vs moderation outcome boundary
  state: resolved
  severity: high
  summary: review coordination objects and moderation result objects required explicit separation.
  impact: affected table semantics, screens, and auth boundaries
  resolution_note: resolved by 0400230_REVIEW_PIPELINE_MODERATION_BOUNDARY_DECISION.md

- issue_id: K4-002
  area: alert-boundary
  title: confirm general notification vs review alert boundary
  state: resolved
  severity: high
  summary: alert-specific flows required explicit separation from general inbox semantics.
  impact: affected list/detail screens and transport contracts
  resolution_note: resolved by 0400240_NOTIFICATION_REVIEW_ALERT_BOUNDARY_DECISION.md

- issue_id: K4-003
  area: visibility-boundary
  title: confirm recipient notification visibility vs runtime delivery visibility boundary
  state: resolved
  severity: high
  summary: recipient-facing meaning required explicit separation from delivery/runtime state.
  impact: affected auth/RLS and payload exposure rules
  resolution_note: resolved by 0400250_RECIPIENT_RUNTIME_VISIBILITY_BOUNDARY_DECISION.md
