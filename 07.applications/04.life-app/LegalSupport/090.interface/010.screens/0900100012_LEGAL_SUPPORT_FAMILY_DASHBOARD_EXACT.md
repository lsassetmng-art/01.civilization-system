# ============================================================
# LEGAL SUPPORT FAMILY DASHBOARD EXACT
# ============================================================

status: draft-formal
system: LegalSupport
layer: interface
subdomain: screens
schema: life

target_role:
  - shared_family_viewer

family_dashboard_sections:
  - shared_case_summary
  - upcoming_shared_deadlines
  - shared_documents_to_prepare
  - shared_next_actions

response_shape:
  shared_case_summary:
    active_shared_case_count: integer

  upcoming_shared_deadlines:
    items:
      - legal_case_id: uuid
        legal_case_title: string
        deadline_type: string
        deadline_date: date
        urgency_level: string

  shared_documents_to_prepare:
    items:
      - legal_case_id: uuid
        legal_case_title: string
        document_name: string
        possession_status: string
        submission_status: string

  shared_next_actions:
    items:
      - legal_case_id: uuid
        legal_case_title: string
        title: string
        due_date: date|null

rules:
  - family dashboard は active membership のみ対象
  - private notes は表示しない
  - expense_record は表示しない
  - recent_exports は表示しない
  - checklist progress は初期段階では表示しない
