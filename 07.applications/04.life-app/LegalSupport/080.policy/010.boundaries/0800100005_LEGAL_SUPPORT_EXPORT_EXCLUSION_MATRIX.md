# ============================================================
# LEGAL SUPPORT EXPORT EXCLUSION MATRIX
# ============================================================

status: draft-formal
system: LegalSupport
layer: policy
subdomain: boundaries
schema: life

principles:
  - export は含める項目を明示選択する
  - 非共有前提の情報は既定除外にする
  - family 向けと professional 向けで将来差分を持てるようにする

default_exclusions:

  legal_case:
    excluded_by_default:
      - owner_user_id
      - archived_at

  fact_timeline:
    excluded_by_default:
      - assumption_text
      - source_note_when_private
      - deleted_at
      - deleted_by
      - delete_reason

  stakeholder:
    excluded_by_default:
      - contact_note
      - private stakeholder entries
      - deleted_at
      - deleted_by
      - delete_reason

  document_item:
    excluded_by_default:
      - shared_flag=false items
      - internal note
      - deleted_at
      - deleted_by
      - delete_reason

  question_list:
    excluded_by_default:
      - internal-only question items
      - deleted_at
      - deleted_by
      - delete_reason

  consultation_note:
    excluded_by_default:
      - full raw note when summary-only export selected
      - pending_items when private
      - next_confirmation_points when private
      - deleted_at
      - deleted_by
      - delete_reason

  action_item:
    excluded_by_default:
      - internal-only tasks
      - deleted_at
      - deleted_by
      - delete_reason

  deadline_item:
    excluded_by_default:
      - deleted_at
      - deleted_by
      - delete_reason

  expense_record:
    excluded_by_default:
      - all expense_record for family export by default
      - deleted_at
      - deleted_by
      - delete_reason

  export_bundle:
    excluded_by_default:
      - exported_by internal id

export_profiles:
  self:
    includes:
      - almost_all_selected_sections
  family:
    includes:
      - case_summary
      - selected timeline summary
      - selected stakeholder summary
      - selected document checklist
      - selected action/deadline summary
    excludes:
      - expense_record by default
      - private notes
      - assumption_text by default
  professional_future:
    includes:
      - future extension
