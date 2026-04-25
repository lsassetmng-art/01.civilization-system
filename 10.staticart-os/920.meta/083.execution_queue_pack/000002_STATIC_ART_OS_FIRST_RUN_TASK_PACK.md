# ============================================================
# STATIC ART OS FIRST RUN TASK PACK
# ============================================================

status: first-run-pack
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

first_run_tasks:
  task_1:
    title: confirm read-only health
    run:
      - bash 132.operations/132410_staticart_master_readonly_sweep.sh

  task_2:
    title: confirm environment
    run:
      - bash 132.operations/132140_staticart_start_here.sh env

  task_3:
    title: confirm pre-start gate
    run:
      - bash 132.operations/132240_staticart_pre_implementation_gate.sh quick

  task_4:
    title: confirm Persona boundary remains intact
    run:
      - bash 132.operations/132290_staticart_persona_final_recheck.sh quick

  task_5:
    title: execute phase 1 precheck
    run:
      - bash 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh precheck

  task_6:
    title: execute phase 1 apply and verify when approved
    run:
      - bash 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh apply
      - bash 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh verify

  task_7:
    title: run post-phase checks
    run:
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase2-check
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase3-check
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase4-5-check
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase6-7-check
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh final-check

  task_8:
    title: record blockers and completion outcome
    files:
      - 920.meta/056.signoff_pack/000002_STATIC_ART_OS_BLOCKER_REGISTER.md
      - 920.meta/056.signoff_pack/000003_STATIC_ART_OS_RISK_REGISTER.md
      - 131.implementation-roadmap/131360_STATIC_ART_OS_STANDALONE_IMPLEMENTATION_READY_COMPLETION_MEMO_TEMPLATE.md

first_run_rule:
- Treat this pack as the bridge from organization-complete to execution-start.
- Do not reopen structure cleanup here.
