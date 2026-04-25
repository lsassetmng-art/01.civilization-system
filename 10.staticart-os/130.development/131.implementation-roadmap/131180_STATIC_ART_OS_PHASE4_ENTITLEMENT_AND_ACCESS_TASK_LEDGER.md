# ============================================================
# STATIC ART OS PHASE4 ENTITLEMENT AND ACCESS TASK LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 4
owner: Boss
prepared_by: Zero

phase_objective:
Implement entitlement resolution and access control backbone.

task_units:
  - P4-T001 implement effective entitlement resolution
  - P4-T002 implement full/sample access session rules
  - P4-T003 implement purchase reflection
  - P4-T004 implement subscription reflection
  - P4-T005 implement blocked_by_region path
  - P4-T006 implement blocked_by_age_policy path
  - P4-T007 implement blocked_by_rights_change path
  - P4-T008 verify coexistence of ownership and subscription
  - P4-T009 verify full/sample access behavior
  - P4-T010 verify Phase 4 exit criteria

important_rules:
  - subscription access never upgrades to permanent ownership
  - blocked states are effective blocks, not history deletion
  - access session must enforce region/age/rights/restriction checks
  - Persona-side DB work uses PERSONA_DATABASE_URL
