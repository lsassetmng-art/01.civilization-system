# ============================================================
# POCKETSECRETARY PHASE A SQL APPLY GATE
# ============================================================

status: canonical
layer: implementation
system: applications
application: PocketSecretary
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-sql-apply-gate

purpose:
Defines the blocking gate that must remain in place before any
PocketSecretary Phase A SQL apply step is executed.

gate_rule:
- no SQL may be applied until the Phase A row-family direction is
  explicitly reviewed against preserved app and BusinessOS boundaries

review_items_before_sql:
- briefing support rows do not collapse daily summary and action truth
- follow-through queue support does not collapse audit and action history
- conversation action support remains additive-only
- action continuity and follow-through visibility remain explicit
- audit append remains separated from operational query storage
- SQL pack follows the standard psql "$DATABASE_URL" <<'SQL' form
- destructive change remains forbidden

gate_fail_examples:
- rewriting existing core tables casually
- collapsing action queue and conversation event history into one unclear table
- bypassing review because stubs compiled successfully

gate_pass_condition:
- row families are explicitly fixed
- additive-only SQL pack is reviewed
- apply order is documented
- rollback or containment plan is understood before execution

current_status:
- gate remains closed
- safe-root stub generation may proceed before SQL only if the other review gates pass
