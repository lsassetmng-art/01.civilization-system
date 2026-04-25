# ============================================================
# MODERATION NOTIFICATION WORDING TIGHTENING CONSOLIDATION
# ============================================================

status: canonical-refinement
layer: implementation
domain: moderation-notification-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Consolidates wording-tightening points for K4 moderation-notification-essential.

tightening_points:

review_pipeline_boundary:
- review pipeline coordinates evaluation workflow only
- review queue items and review tasks do not substitute for moderation outcome records
- review decisions and moderation outcomes remain related but not collapsed

moderation_authority:
- moderation state mutation remains authority-bound only
- end users may submit comments, reports, and appeals only through canonical submit paths
- end users must not directly rewrite moderation-only state

notification_boundary:
- general notifications remain recipient-facing inbox semantics
- review alerts remain role-scoped queue urgency semantics
- escalation alerts remain escalation-specific alert semantics
- these families must not silently collapse into one generic inbox meaning

recipient_vs_runtime_visibility:
- recipient-facing notification detail remains projection-safe only
- delivery-state internals remain runtime-only
- platform event detail remains projection-safe and not raw runtime logging output
