# ============================================================
# MODERATION NOTIFICATION DDL DRAFT DELTA LEDGER
# ============================================================

status: canonical-delta-ledger
layer: implementation
domain: moderation-notification-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Tracks concrete deltas requested during DDL draft review for K4 moderation-notification-essential.

delta_entry_template:
- delta_id
- source_review_item
- affected_document
- change_type
- before_summary
- after_summary
- blocking_or_non_blocking
- applied_state
- note

seed_state:
- no deltas recorded yet

allowed_change_scope:
- SQL precision refinement
- DDL draft wording refinement
- evidence/actor linkage refinement
- notification/runtime boundary refinement
- index strategy refinement
- projection/policy SQL refinement

disallowed_change_scope_without_explicit_escalation:
- meaning-level domain reopen
- review pipeline vs moderation boundary reopen
- notification vs alert family boundary reopen
