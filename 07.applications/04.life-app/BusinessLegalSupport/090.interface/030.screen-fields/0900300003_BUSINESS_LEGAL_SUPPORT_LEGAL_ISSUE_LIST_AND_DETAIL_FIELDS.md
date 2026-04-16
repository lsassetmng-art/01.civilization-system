# ============================================================
# BUSINESS LEGAL SUPPORT LEGAL ISSUE LIST AND DETAIL FIELDS
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 090.interface
subfolder: 030.screen-fields
owner: Boss
prepared_by: Zero

screen_id:
  - legal_issue_list
  - legal_issue_detail

legal_issue_list:
  filters:
    - status
    - issue_type
    - priority
    - keyword
  columns_or_cards:
    - title
    - issue_type
    - status
    - priority
    - started_on
    - next_action
    - updated_at
  source_payload:
    - list_legal_issues_request
    - list_legal_issues_response.items[]

legal_issue_detail:
  header_fields:
    - issue_id
    - title
    - issue_type
    - status
    - priority
    - started_on
    - next_action
    - updated_at

  sections:

    summary_section:
      fields:
        - summary

    child_counts_section:
      fields:
        - contracts
        - deadlines
        - risk_notes
        - consultations
        - attachments
        - checklists
        - timeline_events

    contract_preview_section:
      fields:
        - contract_id
        - title
        - contract_type
        - effective_to
        - status

    deadline_preview_section:
      fields:
        - deadline_id
        - deadline_type
        - due_at
        - completed_flag

    risk_preview_section:
      fields:
        - risk_note_id
        - risk_category
        - severity
        - summary

    consultation_preview_section:
      fields:
        - consultation_id
        - consultation_purpose
        - consulted_at
        - next_check_items

    attachment_preview_section:
      fields:
        - attachment_id
        - file_name
        - file_kind
        - uploaded_at

source_payload:
  - get_legal_issue_response

detail_actions:
  primary:
    - edit_issue
    - open_consultation_prep
  secondary:
    - add_contract
    - add_deadline
    - add_risk_note
    - add_attachment
    - generate_summary
    - open_share_view

detail_rules:
  - section ごとに分割して1画面に詰め込みすぎない
  - summary を先、raw note 系を後ろに置く
  - 法的助言ではない表示を consultation 導線近辺に出す
