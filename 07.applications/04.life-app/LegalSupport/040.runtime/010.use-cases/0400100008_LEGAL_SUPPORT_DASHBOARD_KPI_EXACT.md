# ============================================================
# LEGAL SUPPORT DASHBOARD KPI EXACT
# ============================================================

status: draft-formal
system: LegalSupport
layer: runtime
subdomain: use-cases
schema: life

dashboard_kpis:

  active_case_count:
    source:
      - life.legal_case
    definition:
      - status in [draft, active, on_hold, completed]
      - archived excluded

  upcoming_deadline_count:
    source:
      - life.deadline_item
    definition:
      - deadline_date >= today
      - deadline_date <= today_plus_7
      - notification_enabled=true preferred display
      - archived parent case excluded

  unresolved_document_count:
    source:
      - life.document_item
    definition:
      - possession_status=need_to_get
      - OR submission_status=pending
      - archived parent case excluded

  open_question_count:
    source:
      - life.question_list
    definition:
      - question_status in [open, on_hold]

  family_shared_case_count:
    source:
      - life.legal_case
    definition:
      - visibility_scope=family_shared
      - family_share_enabled=true
      - plus_family only

kpi_response_shape:
  active_case_count: integer
  upcoming_deadline_count: integer
  unresolved_document_count: integer
  open_question_count: integer
  family_shared_case_count: integer
