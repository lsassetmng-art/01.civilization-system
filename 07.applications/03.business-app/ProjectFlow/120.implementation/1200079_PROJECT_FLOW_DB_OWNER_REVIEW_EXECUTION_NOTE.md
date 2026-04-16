# ============================================================
# PROJECT FLOW DB OWNER REVIEW EXECUTION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Defines implementation-prep guidance
for DB-owner review execution.

execution_rules:
- review schema confirmation first
- review ownership-sensitive constraint hardening second
- review trigger sequencing third
- review RLS execution design after ownership and hardening direction are stable
- record explicit non-start or hold reasons for any unresolved DB item
