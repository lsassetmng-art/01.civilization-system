# ============================================================
# ACCEPTANCE EXECUTION CHECKLIST CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: implementation-prep-only
schema_name: life

checklist:

  section_01_case:
    - case can be created with required fields only
    - case can be reopened and updated
    - archive is non-destructive in intent
    - no legal-judgment wording appears as system certainty

  section_02_fact_and_stakeholder:
    - fact confidence remains distinct
    - incomplete fact source does not block recording
    - stakeholder remains case-scoped
    - owner relation and role note are preserved

  section_03_document_and_consultation:
    - document and evidence are separated in responsibility
    - same screen can still distinguish them visually
    - confidentiality level remains visible in logic
    - consultation note preserves unresolved_points and next_steps separately

  section_04_task_and_deadline:
    - task without due date can still exist
    - deadline can exist with minimal required fields
    - no false certainty is invented for ambiguous deadlines

  section_05_share_and_export:
    - viewer is read-only
    - viewer has no comment behavior
    - delegated_editor cannot change sharing settings
    - highly_sensitive can remain owner-only
    - export can exclude sensitive items even if case is shared
    - included_sections affects visible/exported content

  section_06_lifeos_reference:
    - other-app information is treated as reference summary
    - source-of-truth is not overwritten
    - LegalSupport context remains primary in its own records

final_gate:
  - all high-risk share/confidentiality checks must pass before sharing is considered ready
