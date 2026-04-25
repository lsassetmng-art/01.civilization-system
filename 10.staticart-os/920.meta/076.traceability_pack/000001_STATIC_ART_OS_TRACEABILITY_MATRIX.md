# ============================================================
# STATIC ART OS TRACEABILITY MATRIX
# ============================================================

status: traceability-matrix
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Map each major concern to the canonical review/execution artifact in this chat scope.

matrix:
  structure_navigation:
    read:
      - 000_STATIC_ART_OS_INDEX.md
      - 000_STATIC_ART_OS_OVERVIEW.md
      - 000_STATIC_ART_OS_ROADMAP.md
      - 000001_STATIC_ART_OS_PORTAL.md
      - 000004_STATIC_ART_OS_FINAL_LANDING_PORTAL.md

  current_status:
    read:
      - 000002_STATIC_ART_OS_STATUS_DASHBOARD.md
    run:
      - bash 132.operations/132180_staticart_refresh_dashboard.sh

  integrated_review:
    read:
      - 000000_STATIC_ART_OS_STANDALONE_IMPLEMENTATION_READY_INTEGRATED.md
      - 000003_STATIC_ART_OS_PERSONA_AWARE_FINAL_REVIEW.md

  implementation_start:
    read:
      - 132.operations/132120_STATIC_ART_OS_IMPLEMENTATION_START_HANDOFF.md
      - 132.operations/132130_STATIC_ART_OS_IMPLEMENTATION_START_CHECKLIST.md
    run:
      - bash 132.operations/132140_staticart_start_here.sh env

  phase_execution:
    run:
      - bash 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh precheck
      - bash 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh apply
      - bash 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh verify
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase2-check
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase3-check
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase4-5-check
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase6-7-check
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh final-check

  signoff_and_gate:
    read:
      - 920.meta/056.signoff_pack/000001_STATIC_ART_OS_PRE_IMPLEMENTATION_SIGNOFF_MEMO_TEMPLATE.md
      - 131.implementation-roadmap/131330_STATIC_ART_OS_IMPLEMENTATION_READY_FINAL_CHECKLIST.md
      - 131.implementation-roadmap/131360_STATIC_ART_OS_STANDALONE_IMPLEMENTATION_READY_COMPLETION_MEMO_TEMPLATE.md
    run:
      - bash 132.operations/132210_staticart_signoff_portal.sh short
      - bash 132.operations/132240_staticart_pre_implementation_gate.sh quick

  health_and_certification:
    read:
      - 920.meta/072.master_final_certification/000001_STATIC_ART_OS_MASTER_FINAL_CERTIFICATION_MEMO.md
    run:
      - bash 132.operations/132190_staticart_healthcheck.sh quick
      - bash 132.operations/132400_staticart_master_final_certify.sh report
      - bash 132.operations/132410_staticart_master_readonly_sweep.sh

  persona_rule:
    read:
      - 080.policy/080160_STATIC_ART_OS_PERSONA_NON_DUPLICATION_AND_SNAPSHOT_CONSUMPTION_RULE.md
      - 080.policy/080170_STATIC_ART_OS_PERSONA_DUPLICATION_AUDIT_CHECKLIST.md
      - 080.policy/080180_STATIC_ART_OS_PERSONA_SNAPSHOT_REPLACEMENT_MATRIX.md
      - 080.policy/080190_STATIC_ART_OS_PERSONA_DIRECT_MUTATION_ABOLISH_LIST.md
      - 080.policy/080200_STATIC_ART_OS_PERSONA_REFERENCE_LAYER_EXACT_INSERTION_POINTS.md
      - 132.operations/132300_STATIC_ART_OS_PERSONA_RULE_FINAL_PORTAL_NOTE.md
    run:
      - bash 132.operations/132250_staticart_persona_rule_review.sh short
      - bash 132.operations/132290_staticart_persona_final_recheck.sh quick

  completion_and_resume:
    read:
      - 920.meta/070.design_organization_completion/000001_STATIC_ART_OS_DESIGN_ORGANIZATION_COMPLETION_MEMO.md
      - 920.meta/074.next_chat_handoff/000001_STATIC_ART_OS_NEXT_CHAT_HANDOFF_MEMO.md
      - 920.meta/075.export_and_resume_pack/000003_STATIC_ART_OS_RESUME_NOTE.md
    run:
      - bash 132.operations/132420_staticart_next_chat_handoff.sh short
      - bash 132.operations/132430_staticart_export_resume_portal.sh short

final_rule:
- Use this matrix when you know the concern but not the file.
- Use the final landing portal when you want the overall top entry.
