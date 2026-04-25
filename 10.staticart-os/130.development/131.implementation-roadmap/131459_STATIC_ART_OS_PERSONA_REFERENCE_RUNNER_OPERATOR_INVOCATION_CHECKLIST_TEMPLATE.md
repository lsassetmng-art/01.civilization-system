# ============================================================
# STATIC ART OS PERSONA REFERENCE RUNNER OPERATOR INVOCATION CHECKLIST TEMPLATE
# ============================================================

status: active-actual-template
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Provide the checklist an operator should confirm before invoking any
registry/queue/storage runner.

operator_invocation_checklist:
- I know which runner I am invoking:
  - initialization
  - refresh
  - audit
- I know which mode I am invoking:
  - dry_run
  - apply
  - audit_only
- I know whether the runner is non-mutating or mutating
- I know the canonical authored block root
- I know the execution evidence root is separate
- I know the ledger is canonical for operational status
- I know queues are derived views
- I know anomalies must be surfaced, not hidden
- I know apply should follow reviewed dry_run where meaningful
- I know critical anomalies should block trust in queue order
- I know this runner must not alter Persona ownership semantics

checklist_rule:
- if any item above is not clearly yes, stop and review runner design first
