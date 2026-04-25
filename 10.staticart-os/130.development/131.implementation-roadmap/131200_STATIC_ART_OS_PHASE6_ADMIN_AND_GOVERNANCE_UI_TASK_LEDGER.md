# ============================================================
# STATIC ART OS PHASE6 ADMIN AND GOVERNANCE UI TASK LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 6
owner: Boss
prepared_by: Zero

phase_objective:
Implement governance-facing UI and admin interaction surfaces.

task_units:
  - P6-T001 implement review queue screen
  - P6-T002 implement review detail screen
  - P6-T003 implement decision panel behavior
  - P6-T004 implement restriction/delist/audit detail screen
  - P6-T005 implement support_readonly read-only behavior
  - P6-T006 verify admin permission boundaries
  - P6-T007 verify route/UI consistency
  - P6-T008 verify Phase 6 exit criteria

important_rules:
  - review_admin and policy_admin surfaces remain distinct
  - support_readonly must read but not write
  - governance UI must reflect canonical lifecycle and audit data
