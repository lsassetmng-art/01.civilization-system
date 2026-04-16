# ============================================================
# LEGAL SUPPORT DASHBOARD QUERY EXACT
# ============================================================

status: draft-formal
system: LegalSupport
layer: runtime
subdomain: use-cases
schema: life

get_dashboard:
  request:
    action: get_dashboard
    payload:
      archived_included: false
  response:
    active_case_summary:
      draft_count: integer
      active_count: integer
      on_hold_count: integer
      completed_count: integer
    upcoming_deadlines:
      items:
        - deadline_item_id: uuid
          legal_case_id: uuid
          legal_case_title: string
          deadline_type: string
          deadline_date: date
          urgency_level: string
    unresolved_documents:
      items:
        - document_item_id: uuid
          legal_case_id: uuid
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
          question_status: string
    family_shared_updates:
      items:
        - legal_case_id: uuid
          title: string
          updated_at: timestamptz
          visibility_scope: string

dashboard_limits:
  - upcoming_deadlines max 10
  - unresolved_documents max 10
  - next_confirmation_points max 10
  - family_shared_updates max 10

dashboard_rules:
  - family_shared_updates は plus_family でのみ返す
  - archived case は dashboard 集計対象外
