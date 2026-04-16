# ============================================================
# LEGAL SUPPORT OWNER DASHBOARD EXACT
# ============================================================

status: draft-formal
system: LegalSupport
layer: interface
subdomain: screens
schema: life

target_role:
  - owner

owner_dashboard_sections:
  - active_case_summary
  - upcoming_deadlines
  - unresolved_documents
  - next_confirmation_points
  - family_shared_updates
  - recent_exports
  - checklist_progress_overview

response_shape:
  active_case_summary:
    draft_count: integer
    active_count: integer
    on_hold_count: integer
    completed_count: integer

  upcoming_deadlines:
    items:
      - legal_case_id: uuid
        legal_case_title: string
        deadline_type: string
        deadline_date: date
        urgency_level: string

  unresolved_documents:
    items:
      - legal_case_id: uuid
        legal_case_title: string
        document_name: string
        possession_status: string
        submission_status: string
        important_flag: boolean

  next_confirmation_points:
    items:
      - legal_case_id: uuid
        legal_case_title: string
        question_text: string
        priority: string

  family_shared_updates:
    items:
      - legal_case_id: uuid
        title: string
        updated_at: timestamptz

  recent_exports:
    items:
      - export_bundle_id: uuid
        legal_case_id: uuid
        export_type: string
        target_scope: string
        exported_at: timestamptz

  checklist_progress_overview:
    items:
      - legal_case_id: uuid
        legal_case_title: string
        completion_rate: numeric

rules:
  - owner dashboard は全案件横断 view
  - archived case は既定除外
  - recent_exports は owner のみ表示
