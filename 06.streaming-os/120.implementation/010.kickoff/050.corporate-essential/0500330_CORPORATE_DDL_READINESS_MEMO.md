# ============================================================
# CORPORATE DDL READINESS MEMO
# ============================================================

status: canonical-readiness-memo
layer: implementation
domain: corporate-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Summarizes K5 readiness for future DDL drafting.

tables_in_scope:
- channel_records
- channel_profile_states
- corporate_channel_oversight_records
- affiliated_streamer_references

meaning_level_ready_items:
- public vs oversight visibility boundary is closed
- affiliation vs ownership mutation authority boundary is closed
- affiliated streamer reference identity boundary is closed
- company-scoped dashboard meaning is closed

still_precision_open:
- exact SQL type names
- exact JSON vs structured-column choices
- exact default clauses
- exact FK action clauses
- exact check syntax
- exact uniqueness strategy details
- exact index method and partial-index strategy
- exact policy/projection SQL

ddl_risk_notes:
- do not collapse public channel projection and oversight projection
- do not let affiliation imply mutate-owned semantics
- do not treat affiliated streamer reference as channel identity replacement
- do not widen company-scoped dashboard data into public-facing profile data

recommended_future_order:
1. decide SQL precision items with Sato(DB reviewer)
2. draft channel and profile tables
3. draft oversight and affiliation tables
4. draft minimal indexes
5. draft public and oversight-safe projection strategies
6. review against K5 decision pack
