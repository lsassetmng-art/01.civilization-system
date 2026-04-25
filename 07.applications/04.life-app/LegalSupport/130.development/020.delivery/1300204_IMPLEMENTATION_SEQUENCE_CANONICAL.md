# ============================================================
# IMPLEMENTATION SEQUENCE CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: implementation-prep-only
schema_name: life

recommended_sequence:

  step_1:
    focus:
      - case flow
    deliverables:
      - create/list/detail/update/archive behavior
    reason:
      - all later features depend on case backbone

  step_2:
    focus:
      - fact timeline
      - stakeholder
    deliverables:
      - consultation prep base
    reason:
      - core legal organization value appears here

  step_3:
    focus:
      - document/evidence metadata
      - consultation note
    deliverables:
      - practical prep value
    reason:
      - legal prep becomes materially useful

  step_4:
    focus:
      - task and deadline
    deliverables:
      - post-consultation continuity
    reason:
      - keeps app useful after meeting/consultation

  step_5:
    focus:
      - share and export
    deliverables:
      - plus_family value
    reason:
      - safety-sensitive layer added after base stabilizes

  step_6:
    focus:
      - LifeOS reference links
    deliverables:
      - cross-app context
    reason:
      - should not destabilize core app

sequence_guardrails:
  - no implementation starts from sharing first
  - no implementation starts from cross-app reference first
  - core single-user value must work before family sharing
