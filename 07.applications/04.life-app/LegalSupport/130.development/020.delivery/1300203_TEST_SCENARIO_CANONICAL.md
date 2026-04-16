# ============================================================
# TEST SCENARIO CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: implementation-prep-only
schema_name: life

manual_test_scenarios:

  scenario_01_create_case:
    goal:
      - basic case creation works
    steps:
      - create case with required inputs
      - reopen case detail
      - update summary
    expected:
      - case remains editable
      - no unexpected required fields appear

  scenario_02_fact_confidence:
    goal:
      - timeline supports uncertain facts
    steps:
      - add event with uncertain confidence
      - reopen timeline
    expected:
      - uncertain state preserved
      - no forced source requirement

  scenario_03_document_confidentiality:
    goal:
      - document confidentiality is preserved
    steps:
      - create normal document
      - create sensitive document
      - create highly_sensitive document
    expected:
      - confidentiality values remain distinct

  scenario_04_consultation_followup:
    goal:
      - consultation supports follow-up thinking
    steps:
      - create consultation_note
      - record unresolved_points
      - note next_steps
    expected:
      - items remain distinct
      - no automatic legal conclusion appears

  scenario_05_viewer_restriction:
    goal:
      - viewer stays read-only
    steps:
      - inspect shared case as viewer
    expected:
      - no edit control
      - no comment control
      - no share setting control

  scenario_06_highly_sensitive_visibility:
    goal:
      - highly_sensitive owner-only handling is respected
    steps:
      - share case with delegated_editor or viewer
      - inspect highly_sensitive item
    expected:
      - item can remain hidden
      - no accidental inclusion

  scenario_07_export_redaction:
    goal:
      - export can be stricter than raw case content
    steps:
      - prepare export with family_safe
      - exclude sensitive items
    expected:
      - artifact record reflects stricter output intent

  scenario_08_archive_behavior:
    goal:
      - archive does not imply destructive deletion
    steps:
      - archive case
      - inspect read behavior
    expected:
      - archive state preserved
      - safety maintained
