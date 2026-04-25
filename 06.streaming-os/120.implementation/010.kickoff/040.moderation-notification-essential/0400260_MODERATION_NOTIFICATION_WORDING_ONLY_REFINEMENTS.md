# ============================================================
# MODERATION NOTIFICATION WORDING-ONLY REFINEMENTS
# ============================================================

status: canonical-refinement
layer: implementation
domain: moderation-notification-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

refinement_targets:
- review pipeline coordinates evaluation, not final public semantics
- moderation state is authority-bound and never ordinary end-user writable
- review alerts are role-scoped urgency signals, not generic inbox substitutes
- recipient-facing notification detail must remain projection-safe only
