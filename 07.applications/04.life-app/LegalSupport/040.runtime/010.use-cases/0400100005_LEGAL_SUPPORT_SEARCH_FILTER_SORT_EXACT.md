# ============================================================
# LEGAL SUPPORT SEARCH FILTER SORT EXACT
# ============================================================

status: draft-formal
system: LegalSupport
layer: runtime
subdomain: use-cases
schema: life

principles:
  - 検索は legal_case 一覧を起点にする
  - filter は exact 値優先、search は部分一致前提
  - sort は画面体験を壊さない少数軸に限定する
  - archived は通常非表示、明示指定時のみ含める

# ------------------------------------------------------------
# 1. legal_case search/list exact
# ------------------------------------------------------------
search_legal_case:
  request:
    action: search_legal_case
    payload:
      keyword: string|null
      filters:
        category: array<string>|null
        status: array<string>|null
        priority: array<string>|null
        visibility_scope: array<string>|null
        family_share_enabled: boolean|null
        primary_app_route: array<string>|null
        archived_included: boolean
        has_upcoming_deadline: boolean|null
        has_unresolved_document: boolean|null
      sort:
        field: enum[updated_at, created_at, priority, title, next_deadline_date]
        direction: enum[asc, desc]
      paging:
        page: integer
        per_page: integer
  response:
    items:
      - legal_case_id: uuid
        title: string
        category: string
        status: string
        priority: string
        visibility_scope: string
        primary_app_route: string
        family_share_enabled: boolean
        next_deadline_date: date|null
        unresolved_document_count: integer
        updated_at: timestamptz
    summary:
      total_count: integer
      page: integer
      per_page: integer

search_rules:
  - keyword は title, summary を主対象とする
  - 将来拡張で stakeholder.display_name, document_name を追加可能
  - sort=priority は urgent > high > medium > low を前提とする
  - next_deadline_date sort は null を最後に置く

# ------------------------------------------------------------
# 2. fact_timeline list exact
# ------------------------------------------------------------
list_fact_timeline:
  request:
    action: list_fact_timeline
    payload:
      legal_case_id: uuid
      filters:
        event_type: array<string>|null
        verification_status: array<string>|null
      sort:
        field: enum[event_date, sort_order, created_at]
        direction: enum[asc, desc]
  response:
    items:
      - fact_timeline_id: uuid
        event_date: date|null
        event_date_precision: string
        event_type: string
        fact_text: string
        assumption_text: string|null
        verification_status: string
        sort_order: integer
        updated_at: timestamptz

# ------------------------------------------------------------
# 3. stakeholder list exact
# ------------------------------------------------------------
list_stakeholder:
  request:
    action: list_stakeholder
    payload:
      legal_case_id: uuid
      filters:
        stakeholder_type: array<string>|null
        share_visibility: array<string>|null
      sort:
        field: enum[display_name, stakeholder_type, updated_at]
        direction: enum[asc, desc]
  response:
    items:
      - stakeholder_id: uuid
        stakeholder_type: string
        display_name: string
        relation_to_case: string|null
        share_visibility: string
        updated_at: timestamptz

# ------------------------------------------------------------
# 4. document_item list exact
# ------------------------------------------------------------
list_document_item:
  request:
    action: list_document_item
    payload:
      legal_case_id: uuid
      filters:
        document_category: array<string>|null
        possession_status: array<string>|null
        submission_status: array<string>|null
        important_flag: boolean|null
        shared_flag: boolean|null
      sort:
        field: enum[important_flag, document_name, document_category, updated_at]
        direction: enum[asc, desc]
  response:
    items:
      - document_item_id: uuid
        document_category: string
        document_name: string
        possession_status: string
        submission_status: string
        important_flag: boolean
        shared_flag: boolean
        updated_at: timestamptz
    summary:
      total_count: integer
      unresolved_count: integer

# ------------------------------------------------------------
# 5. question_list exact
# ------------------------------------------------------------
list_question:
  request:
    action: list_question
    payload:
      legal_case_id: uuid
      filters:
        question_status: array<string>|null
        priority: array<string>|null
      sort:
        field: enum[priority, created_at, asked_at, answered_at]
        direction: enum[asc, desc]
  response:
    items:
      - question_id: uuid
        question_text: string
        question_status: string
        priority: string
        asked_at: timestamptz|null
        answered_at: timestamptz|null
        updated_at: timestamptz

# ------------------------------------------------------------
# 6. consultation_note exact
# ------------------------------------------------------------
list_consultation_note:
  request:
    action: list_consultation_note
    payload:
      legal_case_id: uuid
      filters:
        consultation_type: array<string>|null
      sort:
        field: enum[consultation_date, created_at, updated_at]
        direction: enum[asc, desc]
  response:
    items:
      - consultation_note_id: uuid
        consultation_type: string
        consultation_date: timestamptz
        counterpart_name: string|null
        summary: string
        updated_at: timestamptz

# ------------------------------------------------------------
# 7. action_item exact
# ------------------------------------------------------------
list_action_item:
  request:
    action: list_action_item
    payload:
      legal_case_id: uuid
      filters:
        action_status: array<string>|null
        assignee_type: array<string>|null
      sort:
        field: enum[due_date, created_at, updated_at]
        direction: enum[asc, desc]
  response:
    items:
      - action_item_id: uuid
        title: string
        action_status: string
        assignee_type: string
        due_date: date|null
        updated_at: timestamptz

# ------------------------------------------------------------
# 8. deadline_item exact
# ------------------------------------------------------------
list_deadline_item:
  request:
    action: list_deadline_item
    payload:
      legal_case_id: uuid
      filters:
        deadline_type: array<string>|null
        urgency_level: array<string>|null
        notification_enabled: boolean|null
      sort:
        field: enum[deadline_date, urgency_level, updated_at]
        direction: enum[asc, desc]
  response:
    items:
      - deadline_item_id: uuid
        deadline_type: string
        deadline_date: date
        urgency_level: string
        notification_enabled: boolean
        updated_at: timestamptz

# ------------------------------------------------------------
# 9. expense_record exact
# ------------------------------------------------------------
list_expense_record:
  request:
    action: list_expense_record
    payload:
      legal_case_id: uuid
      filters:
        expense_type: array<string>|null
        currency_code: array<string>|null
      sort:
        field: enum[paid_at, amount, created_at, updated_at]
        direction: enum[asc, desc]
  response:
    items:
      - expense_record_id: uuid
        expense_type: string
        amount: numeric
        currency_code: string
        paid_at: date|null
        updated_at: timestamptz

global_paging_rules:
  - default per_page = 20
  - max per_page = 100
  - page starts at 1
