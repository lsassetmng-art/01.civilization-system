# ============================================================
# PHASE TASK BREAKDOWN CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: implementation-prep-only
schema_name: life

phase_task_breakdown:

  phase_1_core:
    targets:
      - wp_01_case_foundation
      - wp_02_fact_and_stakeholder
    tasks:
      - case screen behavior confirm
      - case lifecycle confirm
      - timeline screen behavior confirm
      - stakeholder screen behavior confirm
      - permissions not yet expanded beyond owner single-user baseline
    output:
      - single-user legal prep backbone

  phase_2_practical_use:
    targets:
      - wp_03_document_and_consultation
      - wp_04_task_and_deadline
    tasks:
      - document/evidence shared screen behavior confirm
      - consultation save behavior confirm
      - suggestion-after-consultation behavior confirm
      - task/deadline minimal fields confirm
    output:
      - consultation preparation and follow-up value

  phase_3_safe_sharing:
    targets:
      - wp_05_share_and_export
    tasks:
      - viewer read-only behavior confirm
      - delegated_editor limits confirm
      - highly_sensitive exclusion behavior confirm
      - export stricter-than-screen behavior confirm
    output:
      - family sharing readiness

  phase_4_lifeos_context:
    targets:
      - wp_06_lifeos_reference
    tasks:
      - inheritance reference boundaries confirm
      - end_of_life reference boundaries confirm
      - money planner reference boundaries confirm
    output:
      - LifeOS connected context without cross-app overwrite

breakdown_rules:
  - each phase must preserve design-only decisions
  - no phase should re-open frozen security decisions casually
  - lower phases must not depend on unfinished future phases
