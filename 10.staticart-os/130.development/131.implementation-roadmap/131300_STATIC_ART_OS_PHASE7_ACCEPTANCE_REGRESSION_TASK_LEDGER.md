# ============================================================
# STATIC ART OS PHASE7 ACCEPTANCE REGRESSION TASK LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 7
owner: Boss
prepared_by: Zero

phase_objective:
Execute acceptance and regression hardening for the standalone
StaticArtOS implementation.

phase_scope:
  - lifecycle and publish acceptance
  - review and governance acceptance
  - entitlement and access acceptance
  - library and continuity acceptance
  - policy and blocking acceptance
  - audit and permission acceptance
  - non-functional regression
  - unresolved blocker recording

task_units:
  - P7-T001 run lifecycle_and_publish acceptance
  - P7-T002 run review_and_governance acceptance
  - P7-T003 run entitlement_and_access acceptance
  - P7-T004 run library_and_continuity acceptance
  - P7-T005 run policy_and_blocking acceptance
  - P7-T006 run audit_and_permission acceptance
  - P7-T007 run non-functional regression pass
  - P7-T008 record unresolved blockers
  - P7-T009 decide implementation-ready judgement

exit_definition:
  - acceptance groups are executed
  - failures are either fixed or named
  - no hidden blocker remains
  - implementation-ready judgement is explicit

important_rules:
  - acceptance must be end-to-end, not file-presence only
  - unresolved blockers must be named directly
  - Persona-side DB assumptions must remain consistent
