# ============================================================
# AIWORKER WB01 SQL REVIEW GATE EXACT
# ============================================================

status: wb01-review-gate
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Freeze the review gate before WB01 SQL is turned into executable migrations.

review_gate:
- SQL execution material must be reviewed by 佐藤(DB担当)
- destructive change is not allowed in WB01
- additive-only migration style is mandatory
- executable migration text must preserve the exact canonical boundary already fixed in design
- raw-table grant strategy must be reviewed before any apply step
- rank and style must not appear as SQL privilege shortcuts

required_before_execution:
- exact rank code catalog import source fixed
- target database environment fixed
- migration numbering rule fixed
- rollback policy fixed
- grant and revoke policy fixed

out_of_scope_for_wb01:
- cx22073jw view DDL
- RLS finalization
- trigger hardening
- replay and backfill procedures
- full grant matrix
