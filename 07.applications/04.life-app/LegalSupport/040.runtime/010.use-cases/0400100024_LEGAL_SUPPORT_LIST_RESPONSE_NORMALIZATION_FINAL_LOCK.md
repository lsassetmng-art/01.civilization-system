# ============================================================
# LEGAL SUPPORT LIST RESPONSE NORMALIZATION FINAL LOCK
# ============================================================

status: draft-formal
system: LegalSupport
layer: runtime
subdomain: use-cases
schema: life

purpose:
  - list/search 系 response の meta 形状を固定する
  - paging / count / default sort の表現を揃える
  - dashboard を除く一覧の共通正本とする

list_response_standard:
  action: string
  success: true
  data:
    items:
      - object
  message: string|null
  meta:
    total_count: integer
    page: integer
    per_page: integer
    sort_field: string
    sort_direction: string

default_paging:
  page: 1
  per_page: 20
  max_per_page: 100

default_sort_rules:
  legal_case_list:
    sort_field: updated_at
    sort_direction: desc
  fact_timeline_list:
    sort_field: sort_order
    sort_direction: asc
  stakeholder_list:
    sort_field: display_name
    sort_direction: asc
  document_item_list:
    sort_field: important_flag
    sort_direction: desc
  question_list:
    sort_field: priority
    sort_direction: desc
  consultation_note_list:
    sort_field: consultation_date
    sort_direction: desc
  action_item_list:
    sort_field: due_date
    sort_direction: asc
  deadline_item_list:
    sort_field: deadline_date
    sort_direction: asc
  expense_record_list:
    sort_field: paid_at
    sort_direction: desc

summary_extensions_allowed:
  - unresolved_count
  - checked_count
  - unchecked_count
  - completion_rate

normalization_rules:
  - items は空配列を許可する
  - empty result でも success=true を維持する
  - page / per_page は paging を使わない一覧でも null ではなく既定値を返してよい
  - summary の追加値は meta に置く
