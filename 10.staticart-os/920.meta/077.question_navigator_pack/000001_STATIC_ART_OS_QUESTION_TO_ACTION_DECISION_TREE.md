# ============================================================
# STATIC ART OS QUESTION TO ACTION DECISION TREE
# ============================================================

status: question-navigator
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Help an operator choose the right document or launcher based on
what they want to do next.

decision_tree:
  question_1:
    ask:
      - Do you want the single top entry?
    use:
      - 000004_STATIC_ART_OS_FINAL_LANDING_PORTAL.md

  question_2:
    ask:
      - Do you want the current state snapshot?
    use:
      - 000002_STATIC_ART_OS_STATUS_DASHBOARD.md
      - bash 132.operations/132180_staticart_refresh_dashboard.sh

  question_3:
    ask:
      - Do you want one-shot read-only confirmation?
    use:
      - bash 132.operations/132410_staticart_master_readonly_sweep.sh

  question_4:
    ask:
      - Do you want to begin approved implementation work?
    use:
      - bash 132.operations/132140_staticart_start_here.sh env
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh help

  question_5:
    ask:
      - Do you want phase-by-phase checks?
    use:
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase2-check
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase3-check
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase4-5-check
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase6-7-check
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh final-check

  question_6:
    ask:
      - Do you want pre-start approval/gate confirmation?
    use:
      - bash 132.operations/132240_staticart_pre_implementation_gate.sh quick
      - 132.operations/132220_STATIC_ART_OS_PRE_IMPLEMENTATION_GATE_MATRIX.md

  question_7:
    ask:
      - Do you want Persona boundary confirmation?
    use:
      - 080.policy/080160_STATIC_ART_OS_PERSONA_NON_DUPLICATION_AND_SNAPSHOT_CONSUMPTION_RULE.md
      - bash 132.operations/132290_staticart_persona_final_recheck.sh quick
      - 132.operations/132300_STATIC_ART_OS_PERSONA_RULE_FINAL_PORTAL_NOTE.md

  question_8:
    ask:
      - Do you want next-chat continuation?
    use:
      - 920.meta/074.next_chat_handoff/000001_STATIC_ART_OS_NEXT_CHAT_HANDOFF_MEMO.md
      - bash 132.operations/132420_staticart_next_chat_handoff.sh short

  question_9:
    ask:
      - Do you want export/resume guidance?
    use:
      - 920.meta/075.export_and_resume_pack/000003_STATIC_ART_OS_RESUME_NOTE.md
      - bash 132.operations/132430_staticart_export_resume_portal.sh short

  question_10:
    ask:
      - Do you want to know why a file exists?
    use:
      - 920.meta/076.traceability_pack/000002_STATIC_ART_OS_ARTIFACT_PURPOSE_MAP.md
      - bash 132.operations/132440_staticart_traceability_lookup.sh purpose

final_rule:
- Start from the question, not from random files.
- Use final landing portal for overall navigation.
- Use traceability pack when you know the concern but not the artifact.
