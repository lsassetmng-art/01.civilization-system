# ============================================================
# ASSET PUBLISH DDL DRAFT DELTA LEDGER
# ============================================================

status: canonical-delta-ledger
layer: implementation
domain: asset-publish
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Tracks concrete deltas requested during DDL draft review for K2 asset-publish.

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
- lineage/provenance constraint refinement
- index strategy refinement
- projection/policy SQL refinement

disallowed_change_scope_without_explicit_escalation:
- meaning-level domain reopen
- source-family boundary reopen
