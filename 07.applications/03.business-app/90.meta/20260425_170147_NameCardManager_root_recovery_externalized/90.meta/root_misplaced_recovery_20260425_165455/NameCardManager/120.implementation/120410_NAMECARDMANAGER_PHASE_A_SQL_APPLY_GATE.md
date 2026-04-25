# ============================================================
# NAMECARDMANAGER PHASE A SQL APPLY GATE
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-sql-apply-gate

purpose:
Defines the blocking gate that must remain in place before any
NameCardManager Phase A SQL apply step is executed.

gate_rule:
- no SQL may be applied until the Phase A row-family direction is
  explicitly reviewed against the preserved physical schema core

review_items_before_sql:
- capture and image staging rows do not break preserved core assumptions
- relationship query support does not collapse approval, publication,
  audit, and history boundaries
- company timeline support remains additive-only
- app-share and ERP-public separation remains explicit
- audit append remains separated from operational query storage
- SQL pack follows the standard psql "$DATABASE_URL" <<'SQL' form
- destructive change remains forbidden

gate_fail_examples:
- rewrite of existing physical schema core
- mixing capture staging rows into canonical relationship truth casually
- collapsing company timeline and raw capture evidence into one unclear table
- bypassing review because query stubs compiled successfully

gate_pass_condition:
- row families are explicitly fixed
- additive-only SQL pack is reviewed
- apply order is documented
- rollback or containment plan is understood before execution

current_status:
- gate remains closed
- safe-root stub generation may proceed before SQL only if the other review gates pass
