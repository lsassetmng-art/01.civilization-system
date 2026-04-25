# ============================================================
# MONETIZATION REACTION RANKING AD DDL DRAFT DELTA LEDGER
# ============================================================

status: canonical-delta-ledger
layer: implementation
domain: monetization-reaction-ranking-ad
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Tracks concrete deltas requested during DDL draft review for K6 monetization-reaction-ranking-ad.

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
- money / score precision refinement
- raw-event vs projection vs control-plane refinement
- index strategy refinement
- projection/policy SQL refinement

disallowed_change_scope_without_explicit_escalation:
- meaning-level domain reopen
- ranking projection vs generation boundary reopen
- ad projection vs control-plane boundary reopen
