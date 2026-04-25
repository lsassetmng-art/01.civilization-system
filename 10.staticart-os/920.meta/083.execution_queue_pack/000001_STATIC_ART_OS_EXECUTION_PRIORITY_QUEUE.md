# ============================================================
# STATIC ART OS EXECUTION PRIORITY QUEUE
# ============================================================

status: execution-queue
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Translate the organized StaticArtOS pack into a practical execution order.

execution_priority_queue:
  Q1_environment_and_readiness:
    goal:
      - confirm environment and read-only readiness before any execution
    commands:
      - bash 132.operations/132410_staticart_master_readonly_sweep.sh
      - bash 132.operations/132140_staticart_start_here.sh env
      - bash 132.operations/132240_staticart_pre_implementation_gate.sh quick
      - bash 132.operations/132290_staticart_persona_final_recheck.sh quick

  Q2_phase1_db_foundation:
    goal:
      - execute approved DB foundation workflow
    commands:
      - bash 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh help
      - bash 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh precheck
      - bash 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh apply
      - bash 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh verify

  Q3_phase_checks_after_db:
    goal:
      - verify higher phases after DB base is stable
    commands:
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase2-check
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase3-check
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase4-5-check
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase6-7-check
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh final-check

  Q4_signoff_and_record:
    goal:
      - record actual outcomes after execution
    files:
      - 920.meta/056.signoff_pack/000001_STATIC_ART_OS_PRE_IMPLEMENTATION_SIGNOFF_MEMO_TEMPLATE.md
      - 131.implementation-roadmap/131360_STATIC_ART_OS_STANDALONE_IMPLEMENTATION_READY_COMPLETION_MEMO_TEMPLATE.md
      - 920.meta/056.signoff_pack/000002_STATIC_ART_OS_BLOCKER_REGISTER.md
      - 920.meta/056.signoff_pack/000003_STATIC_ART_OS_RISK_REGISTER.md

priority_rule:
- Do not skip Q1.
- Do not run Q3 before Q2 is actually stable.
- If Persona-linked display/reference work is introduced, keep signed-snapshot consumption only.
