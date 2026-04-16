# ============================================================
# ACCEPTANCE CRITERIA CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: implementation-prep-only
schema_name: life

acceptance_criteria:

  case_management:
    - user can create a case with required fields
    - user can reopen and update the same case
    - archive is available without destructive deletion expectation

  fact_timeline:
    - user can add timeline events with confidence separation
    - incomplete source detail does not block save

  stakeholder:
    - user can add stakeholders inside a case
    - stakeholder type and role note are preserved

  document_evidence:
    - user can manage document/evidence metadata
    - confidentiality_level is preserved
    - reviewed_flag is preserved

  consultation:
    - user can save consultation_note
    - unresolved_points and next_steps remain distinct
    - task/deadline suggestion direction is visible in design intent

  task_deadline:
    - user can manage task status
    - deadline can exist with minimal fields
    - no forced certainty is invented

  sharing_export:
    - explicit share only
    - viewer remains read-only
    - highly_sensitive can stay owner-only
    - export can exclude sensitive content

  overall_safety:
    - no screen implies legal final judgment
    - no role bypasses confidentiality by accident
