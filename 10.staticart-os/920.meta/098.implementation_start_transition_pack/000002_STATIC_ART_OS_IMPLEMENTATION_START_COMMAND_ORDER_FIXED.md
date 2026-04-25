# ============================================================
# STATIC ART OS IMPLEMENTATION START COMMAND ORDER FIXED
# ============================================================

status: command-order
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Fix the exact order to be followed when implementation actually begins.

order:
  phase_0_readonly_confirmation:
    - bash 132.operations/132670_staticart_master_design_freeze_verify_only.sh
    - bash 132.operations/132410_staticart_master_readonly_sweep.sh
    - bash 132.operations/132240_staticart_pre_implementation_gate.sh quick
    - bash 132.operations/132290_staticart_persona_final_recheck.sh quick

  phase_1_environment_and_start:
    - bash 132.operations/132140_staticart_start_here.sh env
    - bash 132.operations/132100_staticart_standalone_master_launcher.sh help

  phase_2_db_foundation:
    - bash 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh precheck
    - bash 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh apply
    - bash 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh verify

  phase_3_post_phase_checks:
    - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase2-check
    - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase3-check
    - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase4-5-check
    - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase6-7-check
    - bash 132.operations/132100_staticart_standalone_master_launcher.sh final-check

  phase_4_execution_recording:
    - bash 132.operations/132540_staticart_prepare_execution_run.sh prepare
    - update execution session log
    - update post-run summary
    - update blocker/risk register if needed
    - refresh execution run archive/status if needed

strict_rule:
- do not skip phase_0
- do not run phase_3 before phase_2 is complete
- do not start Persona reference implementation separately from controlled implementation sequence
