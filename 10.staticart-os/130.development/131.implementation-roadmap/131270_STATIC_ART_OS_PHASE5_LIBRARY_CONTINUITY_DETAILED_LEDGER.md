# ============================================================
# STATIC ART OS PHASE5 LIBRARY CONTINUITY DETAILED LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 5
owner: Boss
prepared_by: Zero

phase_objective:
Implement library surfaces and continuity persistence.

task_units:
  - P5-T001 bind my library list
  - P5-T002 bind continue reading list
  - P5-T003 bind continue viewing list
  - P5-T004 bind reader progress save
  - P5-T005 bind viewer progress save
  - P5-T006 bind favorite add
  - P5-T007 bind favorite delete
  - P5-T008 bind annotation create
  - P5-T009 verify favorite survives entitlement loss
  - P5-T010 verify Phase 5 exit criteria

exit_definition:
  - library list works
  - continue reading works
  - continue viewing works
  - reader progress persists independently
  - viewer progress persists independently
  - favorite add/remove works
  - annotation create works
  - favorite remains after entitlement-loss scenario

important_rules:
  - reader continuity and viewer continuity are separate paths
  - favorite is allowed even when asset is sample_only and visible
  - favorite/progress/annotation are not auto-deleted on block
