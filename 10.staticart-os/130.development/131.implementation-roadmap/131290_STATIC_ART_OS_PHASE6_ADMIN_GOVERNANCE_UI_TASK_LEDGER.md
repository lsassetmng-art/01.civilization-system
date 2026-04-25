# ============================================================
# STATIC ART OS PHASE6 ADMIN GOVERNANCE UI TASK LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 6
owner: Boss
prepared_by: Zero

phase_objective:
Implement the admin and governance UI surfaces needed to operate
review, restriction, and audit flows inside StaticArtOS.

phase_scope:
  - review queue screen
  - review detail screen
  - decision panel interaction
  - restriction / delist / audit detail screen
  - support_readonly behavior
  - admin permission boundary reflection in UI

task_units:
  - P6-T001 implement review queue screen binding
  - P6-T002 implement review detail screen binding
  - P6-T003 implement decision panel state binding
  - P6-T004 implement restriction/delist/audit detail screen binding
  - P6-T005 implement support_readonly read-only rendering
  - P6-T006 verify review_admin and policy_admin separation
  - P6-T007 verify UI reads canonical lifecycle/audit state
  - P6-T008 verify Phase 6 exit criteria

screen_targets:
  - SA-AD-001 Review Queue
  - SA-AD-010 Review Detail
  - SA-AD-020 Restriction/Delist/Audit Detail

exit_definition:
  - review queue is visible and filterable
  - review detail shows canonical decision inputs
  - decision panel respects actor role and required reasons
  - audit detail shows blocking effects and reason timeline
  - support_readonly is read-only
  - governance UI reflects canonical lifecycle, review, and audit state

important_rules:
  - UI does not invent governance truth
  - review_admin and policy_admin capabilities must not blur in UI
  - support_readonly never gets write actions
