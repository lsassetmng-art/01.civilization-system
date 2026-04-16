# ============================================================
# LEGAL SUPPORT REQUEST RESPONSE EXACT PAYLOADS
# ============================================================

status: draft-formal
system: LegalSupport
layer: runtime
subdomain: use-cases
schema: life

principles:
  - 実装コードではなく payload 設計正本
  - create / update / list / detail / archive / export の単位で定義する
  - response は UI 表示に必要な最小構造を基準とする
  - 共通 envelope は screen ごとに過剰化しない

# ------------------------------------------------------------
# 1. create legal_case
# ------------------------------------------------------------
create_legal_case:
  request:
    action: create_legal_case
    payload:
      title: string
      category: enum[family, inheritance, divorce, neighborhood, contract, consumer, debt, labor, housing, accident, end_of_life, other]
      priority: enum[low, medium, high, urgent]
      summary: string|null
      visibility_scope: enum[private, family_shared]
      family_share_enabled: boolean
  response:
    legal_case:
      legal_case_id: uuid
      owner_user_id: uuid
      title: string
      category: string
      status: draft
      priority: string
      summary: string|null
      visibility_scope: string
      primary_app_route: string
      family_share_enabled: boolean
      archived_at: timestamptz|null
      created_at: timestamptz
      updated_at: timestamptz

# ------------------------------------------------------------
# 2. update legal_case
# ------------------------------------------------------------
update_legal_case:
  request:
    action: update_legal_case
    payload:
      legal_case_id: uuid
      title: string
      category: string
      priority: string
      summary: string|null
      visibility_scope: string
      family_share_enabled: boolean
      status: enum[draft, active, on_hold, completed, archived]
  response:
    legal_case:
      legal_case_id: uuid
      title: string
      category: string
      status: string
      priority: string
      summary: string|null
      visibility_scope: string
      family_share_enabled: boolean
      updated_at: timestamptz

# ------------------------------------------------------------
# 3. list legal_case
# ------------------------------------------------------------
list_legal_case:
  request:
    action: list_legal_case
    payload:
      category: string|null
      status: string|null
      priority: string|null
      family_share_enabled: boolean|null
      archived_included: boolean
  response:
    items:
      - legal_case_id: uuid
        title: string
        category: string
        status: string
        priority: string
        visibility_scope: string
        family_share_enabled: boolean
        updated_at: timestamptz
    summary:
      total_count: integer

# ------------------------------------------------------------
# 4. legal_case detail
# ------------------------------------------------------------
get_legal_case_detail:
  request:
    action: get_legal_case_detail
    payload:
      legal_case_id: uuid
  response:
    legal_case:
      legal_case_id: uuid
      title: string
      category: string
      status: string
      priority: string
      summary: string|null
      visibility_scope: string
      primary_app_route: string
      family_share_enabled: boolean
      created_at: timestamptz
      updated_at: timestamptz
    counts:
      fact_timeline_count: integer
      stakeholder_count: integer
      document_item_count: integer
      question_count: integer
      consultation_note_count: integer
      action_item_count: integer
      deadline_item_count: integer
    next_deadline:
      deadline_item_id: uuid|null
      deadline_date: date|null
      urgency_level: string|null

# ------------------------------------------------------------
# 5. create fact_timeline
# ------------------------------------------------------------
create_fact_timeline:
  request:
    action: create_fact_timeline
    payload:
      legal_case_id: uuid
      event_date: date|null
      event_date_precision: enum[exact_date, month_only, year_only, estimated, unknown]
      event_type: enum[consultation, incident, communication, filing, payment, contract, family_event, other]
      fact_text: string
      assumption_text: string|null
      source_note: string|null
      verification_status: enum[confirmed, unverified, disputed]
  response:
    fact_timeline:
      fact_timeline_id: uuid
      legal_case_id: uuid
      event_date: date|null
      event_date_precision: string
      event_type: string
      fact_text: string
      assumption_text: string|null
      source_note: string|null
      verification_status: string
      sort_order: integer
      created_at: timestamptz
      updated_at: timestamptz

# ------------------------------------------------------------
# 6. create stakeholder
# ------------------------------------------------------------
create_stakeholder:
  request:
    action: create_stakeholder
    payload:
      legal_case_id: uuid
      stakeholder_type: enum[self, family, counterpart, lawyer, advisor, organization, other]
      display_name: string
      relation_to_case: string|null
      contact_note: string|null
      share_visibility: enum[private, family_visible]
  response:
    stakeholder:
      stakeholder_id: uuid
      legal_case_id: uuid
      stakeholder_type: string
      display_name: string
      relation_to_case: string|null
      contact_note: string|null
      share_visibility: string
      created_at: timestamptz
      updated_at: timestamptz

# ------------------------------------------------------------
# 7. create document_item
# ------------------------------------------------------------
create_document_item:
  request:
    action: create_document_item
    payload:
      legal_case_id: uuid
      document_category: enum[id, contract, letter, receipt, certificate, family_record, property_record, consultation_material, other]
      document_name: string
      possession_status: enum[have, need_to_get, unavailable]
      submission_status: enum[not_required, pending, submitted]
      important_flag: boolean
      shared_flag: boolean
      note: string|null
  response:
    document_item:
      document_item_id: uuid
      legal_case_id: uuid
      document_category: string
      document_name: string
      possession_status: string
      submission_status: string
      important_flag: boolean
      shared_flag: boolean
      note: string|null
      created_at: timestamptz
      updated_at: timestamptz

# ------------------------------------------------------------
# 8. create question_list
# ------------------------------------------------------------
create_question:
  request:
    action: create_question
    payload:
      legal_case_id: uuid
      question_text: string
      question_status: enum[open, asked, answered, on_hold]
      priority: enum[low, medium, high]
      asked_at: timestamptz|null
      answered_at: timestamptz|null
      note: string|null
  response:
    question:
      question_id: uuid
      legal_case_id: uuid
      question_text: string
      question_status: string
      priority: string
      asked_at: timestamptz|null
      answered_at: timestamptz|null
      note: string|null
      created_at: timestamptz
      updated_at: timestamptz

# ------------------------------------------------------------
# 9. create consultation_note
# ------------------------------------------------------------
create_consultation_note:
  request:
    action: create_consultation_note
    payload:
      legal_case_id: uuid
      consultation_type: enum[in_person, phone, chat, email, internal_note, other]
      consultation_date: timestamptz
      counterpart_name: string|null
      summary: string
      pending_items: string|null
      next_confirmation_points: string|null
  response:
    consultation_note:
      consultation_note_id: uuid
      legal_case_id: uuid
      consultation_type: string
      consultation_date: timestamptz
      counterpart_name: string|null
      summary: string
      pending_items: string|null
      next_confirmation_points: string|null
      created_at: timestamptz
      updated_at: timestamptz

# ------------------------------------------------------------
# 10. create action_item
# ------------------------------------------------------------
create_action_item:
  request:
    action: create_action_item
    payload:
      legal_case_id: uuid
      title: string
      action_status: enum[open, in_progress, done, cancelled]
      assignee_type: enum[self, family, professional, other]
      due_date: date|null
      note: string|null
  response:
    action_item:
      action_item_id: uuid
      legal_case_id: uuid
      title: string
      action_status: string
      assignee_type: string
      due_date: date|null
      note: string|null
      created_at: timestamptz
      updated_at: timestamptz

# ------------------------------------------------------------
# 11. create deadline_item
# ------------------------------------------------------------
create_deadline_item:
  request:
    action: create_deadline_item
    payload:
      legal_case_id: uuid
      deadline_type: enum[consultation, submission, response, payment, reminder, other]
      deadline_date: date
      urgency_level: enum[low, medium, high, urgent]
      notification_enabled: boolean
      note: string|null
  response:
    deadline_item:
      deadline_item_id: uuid
      legal_case_id: uuid
      deadline_type: string
      deadline_date: date
      urgency_level: string
      notification_enabled: boolean
      note: string|null
      created_at: timestamptz
      updated_at: timestamptz

# ------------------------------------------------------------
# 12. create expense_record
# ------------------------------------------------------------
create_expense_record:
  request:
    action: create_expense_record
    payload:
      legal_case_id: uuid
      expense_type: enum[consultation_fee, document_fee, filing_fee, travel_cost, other]
      amount: numeric
      currency_code: enum[JPY, USD, EUR, GBP, CNY, other]
      paid_at: date|null
      note: string|null
  response:
    expense_record:
      expense_record_id: uuid
      legal_case_id: uuid
      expense_type: string
      amount: numeric
      currency_code: string
      paid_at: date|null
      note: string|null
      created_at: timestamptz
      updated_at: timestamptz

# ------------------------------------------------------------
# 13. export bundle create
# ------------------------------------------------------------
create_export_bundle:
  request:
    action: create_export_bundle
    payload:
      legal_case_id: uuid
      export_type: enum[pdf, summary]
      included_sections:
        case_summary: boolean
        timeline_summary: boolean
        stakeholder_summary_selected: boolean
        document_checklist_selected: boolean
        question_list_selected: boolean
        action_deadline_summary: boolean
      target_scope: enum[self, family, professional_future]
  response:
    export_bundle:
      export_bundle_id: uuid
      legal_case_id: uuid
      export_type: string
      included_sections: jsonb
      target_scope: string
      exported_at: timestamptz
      exported_by: uuid

# ------------------------------------------------------------
# 14. archive legal_case
# ------------------------------------------------------------
archive_legal_case:
  request:
    action: archive_legal_case
    payload:
      legal_case_id: uuid
  response:
    legal_case:
      legal_case_id: uuid
      status: archived
      archived_at: timestamptz
      updated_at: timestamptz
