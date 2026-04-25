# ============================================================
# AIWORKER DB APPLY REVIEW AND PHASE GATE EXACT
# ============================================================

status: implementation-db-gate
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Freeze the DB apply gate and review requirements before executable material is run.

phase_gate_order:
- Phase B1:
  package PKG-AIW-001 migration text
- Phase B2:
  package PKG-AIW-002 controlled function text
- Phase B3:
  package PKG-AIW-004 role/grant/RLS text
- Phase B4:
  package PKG-AIW-005 replay/recovery helper text
- Phase B5:
  apply acceptance test execution material

review_requirements:
- all SQL-affecting material must be reviewed with 佐藤(DB担当)
- additive-only confirmation required
- target environment confirmation required
- rollback or compensating-path note required
- grant impact note required

apply_blockers:
- contradiction with freeze bundle
- destructive DDL
- undeclared raw-table grant widening
- missing reviewer signoff for SQL-affecting package
- missing environment binding

hard_rules:
- design freeze is not DB apply approval
- DB apply readiness is narrower than implementation-ready design status
