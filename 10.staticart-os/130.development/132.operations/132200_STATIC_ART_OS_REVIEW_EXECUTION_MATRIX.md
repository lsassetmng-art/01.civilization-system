# ============================================================
# STATIC ART OS REVIEW EXECUTION MATRIX
# ============================================================

status: active
system: StaticArtOS
mode: standalone
owner: Boss
prepared_by: Zero

purpose:
Maps "what to read" to "what to run" for the standalone StaticArtOS pack.

matrix:
  environment:
    read:
      - 000_STATIC_ART_OS_OVERVIEW.md
      - 132.operations/132120_STATIC_ART_OS_IMPLEMENTATION_START_HANDOFF.md
    run:
      - bash 132.operations/132140_staticart_start_here.sh env

  structure_review:
    read:
      - 000_STATIC_ART_OS_INDEX.md
      - 000_STATIC_ART_OS_ROADMAP.md
      - 000002_STATIC_ART_OS_STATUS_DASHBOARD.md
    run:
      - bash 132.operations/132160_staticart_review_portal.sh short

  phase_1_db:
    read:
      - 121.db-implementation-prep/121170_STATIC_ART_OS_PHASE1_OPERATION_MANUAL.md
    run:
      - bash 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh help
      - bash 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh precheck
      - bash 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh apply
      - bash 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh verify

  phase_2_to_phase_7:
    read:
      - 131.implementation-roadmap/131320_STATIC_ART_OS_STANDALONE_FINAL_ROADMAP.md
      - 131.implementation-roadmap/131330_STATIC_ART_OS_IMPLEMENTATION_READY_FINAL_CHECKLIST.md
    run:
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase2-check
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase3-check
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase4-5-check
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase6-7-check

  final_judgement:
    read:
      - 131.implementation-roadmap/131360_STATIC_ART_OS_STANDALONE_IMPLEMENTATION_READY_COMPLETION_MEMO_TEMPLATE.md
      - 920.meta/047.standalone_freeze/000003_STATIC_ART_OS_STANDALONE_FREEZE_NOTE.md
      - 920.meta/050.standalone_closeout/000001_STATIC_ART_OS_STANDALONE_CLOSEOUT_SUMMARY.md
    run:
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh final-check

important_rules:
- PERSONA_DATABASE_URL is the Persona-side DB target.
- Structure/readiness review does not replace actual phase execution.
- Final judgement must record blockers explicitly.
