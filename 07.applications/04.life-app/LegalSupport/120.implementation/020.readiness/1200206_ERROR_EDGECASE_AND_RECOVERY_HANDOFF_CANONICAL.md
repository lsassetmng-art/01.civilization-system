# ============================================================
# ERROR EDGECASE AND RECOVERY HANDOFF CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: implementation-prep-only
schema_name: life

edgecase_groups:

  case_edgecases:
    - case exists but archived
    - case visible but child item hidden by confidentiality
    - case summary incomplete
    recovery_direction:
      - preserve read access where allowed
      - block destructive behavior
      - allow progressive completion

  timeline_edgecases:
    - event_date known but source unknown
    - confidence uncertain
    - related stakeholder missing
    recovery_direction:
      - allow partial record
      - avoid forced completeness

  document_edgecases:
    - metadata exists without attachment
    - attachment reference exists but binary unavailable
    - highly_sensitive item in shared case
    recovery_direction:
      - preserve metadata visibility rules
      - fail closed on binary visibility
      - avoid silent overexposure

  consultation_edgecases:
    - consultation saved without next_steps
    - advisor contact not registered
    recovery_direction:
      - allow standalone consultation_note
      - keep advisor_contact optional

  task_deadline_edgecases:
    - task without due date
    - deadline without severity
    - ambiguous deadline not fully modeled
    recovery_direction:
      - allow basic operation
      - defer sophistication
      - do not invent false certainty

  share_export_edgecases:
    - share target revoked
    - included_sections references hidden items
    - export requested with sensitive exclusion
    recovery_direction:
      - inactive wins over old grant
      - final filtering before render/export
      - artifact generated with stricter content set

error_response_direction:
  - fail safely
  - avoid accidental disclosure
  - preserve drafts/records when possible
  - do not convert missing certainty into asserted certainty

recovery_priority:
  - safety over convenience
  - visibility correctness over completeness
  - no automatic legal interpretation
