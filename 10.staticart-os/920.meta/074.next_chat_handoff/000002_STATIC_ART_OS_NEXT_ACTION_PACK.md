# ============================================================
# STATIC ART OS NEXT ACTION PACK
# ============================================================

status: handoff-action-pack
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

next_action_options:
  option_A_review_only:
    use_when:
      - you want to confirm readiness without implementation
    read:
      - 000004_STATIC_ART_OS_FINAL_LANDING_PORTAL.md
      - 000002_STATIC_ART_OS_STATUS_DASHBOARD.md
      - 000003_STATIC_ART_OS_PERSONA_AWARE_FINAL_REVIEW.md
    run:
      - bash 132.operations/132410_staticart_master_readonly_sweep.sh

  option_B_start_execution:
    use_when:
      - you want to start approved implementation work
    run_order:
      - bash 132.operations/132140_staticart_start_here.sh env
      - bash 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh precheck
      - bash 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh apply
      - bash 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh verify
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase2-check
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase3-check
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase4-5-check
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase6-7-check
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh final-check

  option_C_persona_rule_confirmation:
    use_when:
      - Persona-linked display/reference work is about to begin
    read:
      - 080.policy/080160_STATIC_ART_OS_PERSONA_NON_DUPLICATION_AND_SNAPSHOT_CONSUMPTION_RULE.md
      - 080.policy/080200_STATIC_ART_OS_PERSONA_REFERENCE_LAYER_EXACT_INSERTION_POINTS.md
      - 132.operations/132300_STATIC_ART_OS_PERSONA_RULE_FINAL_PORTAL_NOTE.md
    run:
      - bash 132.operations/132290_staticart_persona_final_recheck.sh quick

do_not_restart:
- do not redo structure repair
- do not redo root navigation creation
- do not redo freeze/handoff/closeout creation unless intentionally regenerating
- do not re-open Persona ownership boundary decisions in StaticArtOS

next_boundary:
- next chat should move to review-confirmed execution or additive implementation only
