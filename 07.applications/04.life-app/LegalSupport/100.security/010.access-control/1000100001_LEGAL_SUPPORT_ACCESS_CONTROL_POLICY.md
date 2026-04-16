# ============================================================
# LEGAL SUPPORT ACCESS CONTROL POLICY
# ============================================================

status: draft-formal
system: LegalSupport
layer: security
subdomain: access-control

roles:
  owner:
    permissions:
      - create_case
      - edit_case
      - edit_timeline
      - edit_stakeholder
      - edit_document
      - edit_question
      - edit_consultation_note
      - edit_action
      - edit_deadline
      - configure_share
      - export_pdf

  shared_family_viewer:
    permissions:
      - read_shared_case
      - read_shared_document_metadata
      - read_shared_action
      - read_shared_deadline
    restrictions:
      - cannot_edit_owner_data
      - cannot_change_share_policy
      - cannot_export_full_case_without_permission

  professional_share_target:
    permissions:
      - read_shared_summary_future
    restrictions:
      - future_extension_only
      - no_default_access

access_principles:
  - 最小権限
  - 明示共有
  - 案件単位制御
  - 書類単位制御
  - 共有先別制御

control_units:
  - case_level
  - section_level
  - document_level
  - export_level

sensitive_sections:
  - personal_notes
  - private_family_notes
  - non_shared_document_items
  - internal_assumption_memos

default_security_state:
  - private_by_default
  - no_family_access_without_explicit_share
  - no_external_access_by_default
