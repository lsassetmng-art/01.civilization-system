# ============================================================
# MODERATION NOTIFICATION SQL PRECISION FIRST-PASS DECISION CANDIDATES
# ============================================================

status: canonical-first-pass-candidates
layer: implementation
domain: moderation-notification-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

candidate_decisions:

candidate_01:
- title: review and moderation ids
- candidate: uuid
- reason: stable canonical identifiers across review and moderation families

candidate_02:
- title: review and moderation state storage
- candidate: text plus check constraints
- reason: additive state evolution remains easier than early enum lock-in

candidate_03:
- title: due and urgency time fields
- candidate: timestamptz nullable
- reason: optional but compatible scheduling/urgency semantics

candidate_04:
- title: comment and note text fields
- candidate: text
- reason: flexible first schema without premature caps

candidate_05:
- title: evidence refs
- candidate: jsonb
- reason: variable evidence shapes and counts are likely

candidate_06:
- title: notification read_flag
- candidate: boolean default false
- reason: simplest and most explicit inbox-read semantics

candidate_07:
- title: alert family storage
- candidate: separate review_alert and escalation_alert families
- reason: preserves semantics before any convergence proof exists

candidate_08:
- title: first index set
- candidate:
  - review queue: priority_class, updated_at
  - moderation target: target_type, target_id
  - recipient notifications: recipient_principal_id, created_at
  - alerts: priority_class, updated_at
- reason: enough for first review without over-indexing

candidate_09:
- title: projection split
- candidate:
  - recipient-safe notification projection
  - role-safe alert projection
  - runtime-only delivery projection
- reason: preserves user-visible vs role-visible vs runtime-only boundaries
