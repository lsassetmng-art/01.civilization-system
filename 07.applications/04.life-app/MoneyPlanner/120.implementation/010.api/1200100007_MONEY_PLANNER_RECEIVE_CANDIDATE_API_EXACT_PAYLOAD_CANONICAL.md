# ============================================================
# MONEY PLANNER RECEIVE CANDIDATE API EXACT PAYLOAD CANONICAL
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 120.implementation
subdomain: api

purpose:
  - receive candidate review screen 用 API payload を固定する
  - source_system / status / duplicate を軸に扱えるようにする
  - owner review 前提の action API を明確化する

api_group:
  - list_candidates
  - get_candidate_detail
  - update_candidate_status
  - set_candidate_visibility
  - get_duplicate_reference_summary

list_candidates:
  method: GET
  path: /v1/money-planner/receive-candidates
  query:
    page:
      type: integer
      required: false
    page_size:
      type: integer
      required: false
    source_system:
      type: enum[life_planner,end_of_life_planner,inheritance_support]
      required: false
    import_status:
      type: enum[received,draft_candidate,reviewed,confirmed,rejected,archived]
      required: false
    candidate_type:
      type: enum[event_budget,saving_goal,memo,asset,liability]
      required: false
    duplicate_only:
      type: boolean
      required: false
  response_200:
    success: true
    data:
      items:
        - candidate_registry_id: "uuid"
          plan_id: "uuid"
          source_system: "life_planner"
          source_case_id: "uuid"
          source_object_id: "uuid"
          candidate_type: "event_budget"
          title_or_name: "住宅購入"
          planned_date_or_target_date: "2028-04-01"
          amount: "300000.00"
          currency_code: "JPY"
          import_status: "draft_candidate"
          duplicate_candidate_flag: true
          duplicate_reference_object_id: "uuid"
          mapped_target_object_id: null
          default_visibility_scope: "private"
          received_at: "2026-04-14T20:00:00+09:00"
          reviewed_at: null
      page: 1
      page_size: 20
      total_count: 1
    error: null

get_candidate_detail:
  method: GET
  path: /v1/money-planner/receive-candidates/{candidate_registry_id}
  response_200:
    success: true
    data:
      candidate_registry_id: "uuid"
      plan_id: "uuid"
      source_system: "life_planner"
      source_case_id: "uuid"
      source_object_id: "uuid"
      candidate_type: "event_budget"
      import_status: "draft_candidate"
      duplicate_candidate_flag: true
      duplicate_reference_object_id: "uuid"
      mapped_target_object_id: null
      default_visibility_scope: "private"
      review_note: null
      payload_snapshot:
        source_system: "life_planner"
        share_scope: "life_event_financial_candidate"
        payload:
          life_event_id: "uuid"
          event_name: "住宅購入"
          planned_date: "2028-04-01"
          estimated_amount: "300000.00"
          currency_code: "JPY"
          note: "頭金以外は別検討"
      mapped_target_summary:
        target_table: "life.mp_event_budget"
        event_name: "住宅購入"
        planned_date: "2028-04-01"
        target_amount: "300000.00"
        currency_code: "JPY"
        priority: "high"
      duplicate_reference_summary:
        target_object_id: "uuid"
        target_object_type: "event_budget"
        title_or_name: "住宅購入"
        planned_date_or_target_date: "2028-04-01"
        amount: "300000.00"
        currency_code: "JPY"
      received_at: "2026-04-14T20:00:00+09:00"
      reviewed_at: null
      created_at: "2026-04-14T20:00:00+09:00"
      updated_at: "2026-04-14T20:00:00+09:00"
    error: null

update_candidate_status:
  method: PATCH
  path: /v1/money-planner/receive-candidates/{candidate_registry_id}/status
  request:
    import_status:
      type: enum[draft_candidate,reviewed,confirmed,rejected,archived]
      required: true
    review_note:
      type: string|null
      required: true
  response_200:
    success: true
    data:
      candidate_registry_id: "uuid"
      previous_status: "draft_candidate"
      current_status: "reviewed"
      reviewed_at: "2026-04-14T20:10:00+09:00"
      mapped_target_object_id: null
    error: null

set_candidate_visibility:
  method: PATCH
  path: /v1/money-planner/receive-candidates/{candidate_registry_id}/visibility
  request:
    visibility_scope:
      type: enum[private,shared,selected_only]
      required: true
  response_200:
    success: true
    data:
      candidate_registry_id: "uuid"
      visibility_scope: "private"
      updated_at: "2026-04-14T20:12:00+09:00"
    error: null

get_duplicate_reference_summary:
  method: GET
  path: /v1/money-planner/receive-candidates/{candidate_registry_id}/duplicate-reference
  response_200:
    success: true
    data:
      duplicate_candidate_flag: true
      duplicate_reference_object_id: "uuid"
      duplicate_reference_object_type: "event_budget"
      reference_summary:
        title_or_name: "住宅購入"
        planned_date_or_target_date: "2028-04-01"
        amount: "300000.00"
        currency_code: "JPY"
        visibility_scope: "private"
    error: null

role_rules:
  owner:
    - list_candidates
    - get_candidate_detail
    - update_candidate_status
    - set_candidate_visibility
    - get_duplicate_reference_summary
  partner_editor:
    - list_candidates(read_limited)
    - get_candidate_detail(read_limited)
  viewer: []

status_transition_rules:
  - received から confirmed へ直接更新不可
  - duplicate_candidate_flag=true の場合 reviewed を経由必須
  - confirmed 時は mapped_target_object_id を保持する
  - rejected 後の再採用は新 candidate として扱う

error_codes_related:
  - MP-403-003
  - MP-404-001
  - MP-404-011
  - MP-409-004
  - MP-422-005

additional_error_code_candidates:
  - code: MP-404-011
    meaning: receive candidate not found
  - code: MP-409-004
    meaning: duplicate reference conflict unresolved
  - code: MP-422-005
    meaning: invalid candidate status transition

screen_binding:
  target_screen:
    - receive_candidate_review
