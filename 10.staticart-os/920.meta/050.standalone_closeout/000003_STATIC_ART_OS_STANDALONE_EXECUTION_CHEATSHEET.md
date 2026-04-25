# ============================================================
# STATIC ART OS STANDALONE EXECUTION CHEATSHEET
# ============================================================

status: closeout
system: StaticArtOS
mode: standalone
owner: Boss
prepared_by: Zero

precondition:
- export PERSONA_DATABASE_URL first

read_first:
- 000001_STATIC_ART_OS_PORTAL.md
- 000_STATIC_ART_OS_INDEX.md
- 000_STATIC_ART_OS_OVERVIEW.md
- 000_STATIC_ART_OS_ROADMAP.md

main_commands:
- bash 132.operations/132100_staticart_standalone_master_launcher.sh help
- bash 132.operations/132140_staticart_start_here.sh env
- bash 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh help
- bash 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh precheck
- bash 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh apply
- bash 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh verify
- bash 132.operations/132100_staticart_standalone_master_launcher.sh phase2-check
- bash 132.operations/132100_staticart_standalone_master_launcher.sh phase3-check
- bash 132.operations/132100_staticart_standalone_master_launcher.sh phase4-5-check
- bash 132.operations/132100_staticart_standalone_master_launcher.sh phase6-7-check
- bash 132.operations/132100_staticart_standalone_master_launcher.sh final-check

review_commands:
- bash 132.operations/132160_staticart_review_portal.sh help
- bash 132.operations/132160_staticart_review_portal.sh short
- bash 132.operations/132160_staticart_review_portal.sh integrated-head
- bash 132.operations/132170_staticart_closeout_portal.sh help

finish:
- fill 131.implementation-roadmap/131360_STATIC_ART_OS_STANDALONE_IMPLEMENTATION_READY_COMPLETION_MEMO_TEMPLATE.md
