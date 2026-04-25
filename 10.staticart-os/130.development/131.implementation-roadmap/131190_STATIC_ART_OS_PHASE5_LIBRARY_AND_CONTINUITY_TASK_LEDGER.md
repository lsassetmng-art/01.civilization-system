# ============================================================
# STATIC ART OS PHASE5 LIBRARY AND CONTINUITY TASK LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 5
owner: Boss
prepared_by: Zero

phase_objective:
Implement user library and continuity surfaces.

task_units:
  - P5-T001 implement my library list
  - P5-T002 implement continue reading list
  - P5-T003 implement continue viewing list
  - P5-T004 implement reader progress save
  - P5-T005 implement viewer progress save
  - P5-T006 implement favorite add/remove
  - P5-T007 implement annotation create
  - P5-T008 verify reader/viewer separation
  - P5-T009 verify favorite survives entitlement loss
  - P5-T010 verify Phase 5 exit criteria

important_rules:
  - reader continuity and viewer continuity remain separate
  - favorite is allowed even for sample_only where detail is visible
  - favorite/progress/annotation must not be auto-deleted on entitlement loss
