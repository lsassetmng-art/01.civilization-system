# ============================================================
# STATIC ART OS PHASE4 ENTITLEMENT ACCESS DETAILED LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 4
owner: Boss
prepared_by: Zero

phase_objective:
Implement deterministic entitlement resolution and access session logic.

task_units:
  - P4-T001 resolve effective entitlement from ownership/subscription/sample/block inputs
  - P4-T002 bind GET entitlement read path
  - P4-T003 bind POST create-access-session path
  - P4-T004 bind purchase reflection repository logic
  - P4-T005 bind subscription reflection repository logic
  - P4-T006 bind region block handling
  - P4-T007 bind age policy block handling
  - P4-T008 bind rights change block handling
  - P4-T009 verify owned + subscription coexistence path
  - P4-T010 verify Phase 4 exit criteria

exit_definition:
  - entitlement resolution returns canonical state
  - sample/full access mode is enforced
  - blocked states are returned correctly
  - purchase reflection and subscription reflection entry points are bound
  - no permanent ownership is created from subscription-only flow

important_rules:
  - full access session enforces lifecycle + region + age + rights + restriction
  - sample access session remains distinct from full access
  - entitlement history is not deleted by blocked states
