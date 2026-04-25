# ============================================================
# STATIC ART OS PORTAL
# ============================================================

status: active
system: StaticArtOS
mode: standalone
owner: Boss
prepared_by: Zero

purpose:
This is the human-facing portal for the StaticArtOS standalone
implementation-prep pack created in this chat.

start_here:
- 000_STATIC_ART_OS_INDEX.md
- 000_STATIC_ART_OS_OVERVIEW.md
- 000_STATIC_ART_OS_ROADMAP.md
- 132.operations/132120_STATIC_ART_OS_IMPLEMENTATION_START_HANDOFF.md
- 132.operations/132130_STATIC_ART_OS_IMPLEMENTATION_START_CHECKLIST.md

main_operation_entry:
- 132.operations/132100_staticart_standalone_master_launcher.sh
- 132.operations/132140_staticart_start_here.sh
- 132.operations/132160_staticart_review_portal.sh

main_review_targets:
- 000000_STATIC_ART_OS_STANDALONE_IMPLEMENTATION_READY_INTEGRATED.md
- 131.implementation-roadmap/131330_STATIC_ART_OS_IMPLEMENTATION_READY_FINAL_CHECKLIST.md
- 131.implementation-roadmap/131360_STATIC_ART_OS_STANDALONE_IMPLEMENTATION_READY_COMPLETION_MEMO_TEMPLATE.md

phase_navigation:
- Phase 1:
  - 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh
- Phase 2:
  - 122.api-implementation-prep/phase2-checks/990_staticart_phase2_full_check.sh
- Phase 3:
  - 122.api-implementation-prep/phase3-checks/990_staticart_phase3_full_check.sh
- Phase 4-5:
  - 122.api-implementation-prep/phase4-5-checks/990_staticart_phase4_5_full_check.sh
- Phase 6-7:
  - 124.test-implementation-prep/phase6-7-checks/990_staticart_phase6_7_full_check.sh
- Final:
  - 124.test-implementation-prep/final-standalone-checks/999_staticart_standalone_full_check.sh

environment_rule:
- PERSONA_DATABASE_URL is the Persona-side DB target.
- DATABASE_URL must not be used for StaticArtOS Persona-side DB work.

scope_note:
- CX22073JW work is out of scope in this chat.
- StaticArtOS is handled here as a standalone implementation-prep target.
