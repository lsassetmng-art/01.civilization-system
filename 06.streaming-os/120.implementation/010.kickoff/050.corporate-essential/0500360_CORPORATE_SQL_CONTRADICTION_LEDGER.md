# ============================================================
# CORPORATE SQL CONTRADICTION LEDGER
# ============================================================

status: canonical-ledger
layer: implementation
domain: corporate-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Tracks contradictions found during K5 SQL precision review.

entry_template:
- contradiction_id
- area
- summary
- impact
- severity
- review_outcome
- resolution_note

seed_state:
- no contradictions recorded yet

review_rule:
- only true contradictions or blocking ambiguities belong here
- wording-only cleanup does not belong here
- transport-only precision does not belong here
