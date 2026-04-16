# ============================================================
# PRODUCT PORTFOLIO MANAGER EXACT FLOW PAYLOADS
# ============================================================

status: canonical
layer: flow
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Fix exact request / response payload shapes
for core application flows.

# ============================================================
# 1. PORTFOLIO LIST LOAD
# ============================================================

flow_id: ppm-flow-001
flow_name: portfolio-list-load

request_payload:
  company_id: string
  workspace_id: string
  user_id: string
  period:
    period_type: enum(monthly|quarterly|half_year|yearly|custom)
    start_date: string
    end_date: string
  filters:
    search_text: string|null
    classification_codes: string[]
    category_codes: string[]
    brand_codes: string[]
    lifecycle_stages: string[]
    has_alert: boolean|null
    has_proposal: boolean|null
    review_target_only: boolean|null
  sort:
    field: enum(updated_at|sales_amount|gross_profit_amount|growth_rate|total_score|priority_rank)
    direction: enum(asc|desc)
  paging:
    page: integer
    page_size: integer
  display_context:
    locale: string
    reporting_currency_code: string
    device_type: enum(phone|tablet|pc)

response_payload:
  items:
    - portfolio_item_id: string
      product_id: string
      product_code: string
      product_name: string
      category_code: string
      category_name: string
      brand_code: string
      brand_name: string
      lifecycle_stage: string
      current_classification_code: string|null
      current_priority_rank: integer|null
      metrics:
        reporting_currency_code: string
        sales_amount: number|null
        gross_profit_amount: number|null
        gross_profit_rate: number|null
        growth_rate: number|null
      score:
        total_score: number|null
        score_version: string|null
        calculated_at: string|null
      flags:
        has_alert: boolean
        has_open_proposal: boolean
        is_review_target: boolean
      updated_at: string
  paging:
    page: integer
    page_size: integer
    total_count: integer

# ============================================================
# 2. PRODUCT DETAIL LOAD
# ============================================================

flow_id: ppm-flow-002
flow_name: product-detail-load

request_payload:
  company_id: string
  workspace_id: string
  portfolio_item_id: string
  user_id: string
  period:
    period_type: enum(monthly|quarterly|half_year|yearly|custom)
    start_date: string
    end_date: string
  display_context:
    locale: string
    reporting_currency_code: string

response_payload:
  product:
    portfolio_item_id: string
    product_id: string
    product_code: string
    product_name: string
    category_code: string
    category_name: string
    brand_code: string
    brand_name: string
    series_code: string|null
    series_name: string|null
    lifecycle_stage: string|null
    owner_user_id: string|null
    current_classification_code: string|null
    current_priority_rank: integer|null
    active_flag: boolean
  metric_snapshot:
    metric_snapshot_id: string|null
    metric_period_type: string
    metric_period_start: string
    metric_period_end: string
    transaction_currency_code: string|null
    reporting_currency_code: string|null
    sales_amount: number|null
    sales_quantity: number|null
    gross_profit_amount: number|null
    gross_profit_rate: number|null
    cost_amount: number|null
    inventory_quantity: number|null
    inventory_amount: number|null
    growth_rate: number|null
    source_system_code: string|null
    source_generated_at: string|null
    fetched_at: string|null
  score:
    product_score_id: string|null
    score_version: string|null
    sales_score: number|null
    margin_score: number|null
    growth_score: number|null
    inventory_score: number|null
    risk_score: number|null
    strategic_score: number|null
    total_score: number|null
    calculated_at: string|null
  forecast_reference:
    forecast_reference_id: string|null
    forecast_scope_type: string|null
    forecast_period_type: string|null
    forecast_period_start: string|null
    forecast_period_end: string|null
    forecast_quantity: number|null
    forecast_sales_amount: number|null
    forecast_currency_code: string|null
    confidence_level: number|null
    forecast_source_code: string|null
    forecast_generated_at: string|null
    fetched_at: string|null
  alerts:
    - alert_id: string
      alert_type_code: string
      severity_level: string
      alert_status: string
      detected_at: string
  open_proposals:
    - proposal_id: string
      proposal_type_code: string
      proposal_title: string
      proposal_status: string
      priority_level: string|null
      due_date: string|null
  latest_comments:
    - comment_id: string
      context_type: string
      comment_body: string
      created_by_user_id: string
      created_at: string
  source_context:
    erp_reference: boolean
    forecast_reference: boolean
    last_fact_refresh_at: string|null

# ============================================================
# 3. SCORE REFRESH
# ============================================================

flow_id: ppm-flow-003
flow_name: score-refresh

request_payload:
  company_id: string
  workspace_id: string
  portfolio_item_id: string
  user_id: string
  period:
    period_type: enum(monthly|quarterly|half_year|yearly|custom)
    start_date: string
    end_date: string
  score_version: string
  reporting_currency_code: string

response_payload:
  metric_snapshot:
    metric_snapshot_id: string
    fetched_at: string
  product_score:
    product_score_id: string
    score_version: string
    sales_score: number|null
    margin_score: number|null
    growth_score: number|null
    inventory_score: number|null
    risk_score: number|null
    strategic_score: number|null
    total_score: number|null
    calculated_at: string
    calculation_basis_ref: string|null
  classification_suggestion:
    suggested_classification_code: string|null
    suggestion_reason_key: string|null

# ============================================================
# 4. CLASSIFICATION DRAFT SAVE
# ============================================================

flow_id: ppm-flow-004
flow_name: classification-draft-save

request_payload:
  company_id: string
  workspace_id: string
  portfolio_item_id: string
  user_id: string
  draft:
    classification_draft_id: string|null
    proposed_classification_code: string
    proposed_reason: string
    based_score_id: string|null
    draft_status: enum(draft|submitted|withdrawn|superseded)

response_payload:
  classification_draft:
    classification_draft_id: string
    portfolio_item_id: string
    proposed_classification_code: string
    proposed_reason: string
    based_score_id: string|null
    draft_by_user_id: string
    draft_status: string
    last_saved_at: string

# ============================================================
# 5. PROPOSAL CREATE / UPDATE
# ============================================================

flow_id: ppm-flow-005
flow_name: proposal-create-update

request_payload:
  company_id: string
  workspace_id: string
  portfolio_item_id: string
  user_id: string
  proposal:
    proposal_id: string|null
    proposal_type_code: enum(increase_price|decrease_price|strengthen_promotion|revise_channel|reduce_inventory|revise_sourcing|maintain|shrink|retire)
    proposal_title: string
    proposal_detail: string
    expected_effect: string|null
    risk_note: string|null
    priority_level: enum(low|medium|high|critical)|null
    due_date: string|null
    owner_user_id: string|null
    proposal_status: enum(draft|submitted|in_review|approved|rejected|in_progress|completed)

response_payload:
  proposal:
    proposal_id: string
    portfolio_item_id: string
    proposal_type_code: string
    proposal_title: string
    proposal_detail: string
    expected_effect: string|null
    risk_note: string|null
    priority_level: string|null
    due_date: string|null
    owner_user_id: string|null
    proposal_status: string
    created_by_user_id: string
    created_at: string
    updated_at: string

# ============================================================
# 6. REVIEW SESSION CREATE
# ============================================================

flow_id: ppm-flow-006
flow_name: review-session-create

request_payload:
  company_id: string
  workspace_id: string
  user_id: string
  review_session:
    review_title: string
    target_period_start: string
    target_period_end: string
    target_scope_description: string|null
    scheduled_at: string|null
    status: enum(draft|scheduled|in_progress|completed|archived)

response_payload:
  review_session:
    review_session_id: string
    review_title: string
    target_period_start: string
    target_period_end: string
    target_scope_description: string|null
    scheduled_at: string|null
    status: string
    created_by_user_id: string
    created_at: string
    updated_at: string

# ============================================================
# 7. REVIEW DECISION SAVE
# ============================================================

flow_id: ppm-flow-007
flow_name: review-decision-save

request_payload:
  company_id: string
  workspace_id: string
  review_session_id: string
  portfolio_item_id: string
  user_id: string
  decision:
    decision_type: enum(classification_change|proposal_adopted|proposal_rejected|hold|recheck|assign_action)
    before_classification_code: string|null
    after_classification_code: string|null
    proposal_action: string|null
    assigned_user_id: string|null
    due_date: string|null
    decision_note: string|null

response_payload:
  review_decision:
    review_decision_id: string
    review_session_id: string
    portfolio_item_id: string
    decision_type: string
    before_classification_code: string|null
    after_classification_code: string|null
    proposal_action: string|null
    assigned_user_id: string|null
    due_date: string|null
    decision_note: string|null
    decided_by_user_id: string
    decided_at: string

# ============================================================
# 8. APPROVAL REQUEST CREATE
# ============================================================

flow_id: ppm-flow-008
flow_name: approval-request-create

request_payload:
  company_id: string
  workspace_id: string
  user_id: string
  approval_request:
    request_type: enum(classification_approval|proposal_approval|review_decision_approval)
    target_entity_type: enum(product_classification_draft|product_action_proposal|product_review_decision)
    target_entity_id: string
    due_at: string|null

response_payload:
  approval_request:
    approval_request_id: string
    request_type: string
    target_entity_type: string
    target_entity_id: string
    requested_by_user_id: string
    current_status: enum(pending|approved|rejected|sent_back|on_hold)
    requested_at: string
    due_at: string|null

# ============================================================
# 9. APPROVAL DECISION SAVE
# ============================================================

flow_id: ppm-flow-009
flow_name: approval-decision-save

request_payload:
  company_id: string
  workspace_id: string
  approval_request_id: string
  user_id: string
  approval_decision:
    decision_status: enum(approved|rejected|sent_back|on_hold)
    decision_comment: string|null

response_payload:
  approval_decision:
    approval_decision_id: string
    approval_request_id: string
    decision_status: string
    decision_comment: string|null
    decided_by_user_id: string
    decided_at: string
  approval_request:
    approval_request_id: string
    current_status: string

# ============================================================
# 10. ALERT LIST LOAD
# ============================================================

flow_id: ppm-flow-010
flow_name: alert-list-load

request_payload:
  company_id: string
  workspace_id: string
  user_id: string
  filters:
    severity_levels: string[]
    alert_type_codes: string[]
    alert_statuses: string[]
    assigned_user_id: string|null
  paging:
    page: integer
    page_size: integer

response_payload:
  alerts:
    - alert_id: string
      portfolio_item_id: string
      product_code: string
      product_name: string
      alert_type_code: string
      severity_level: string
      alert_status: string
      detected_at: string
      resolved_at: string|null
      assigned_user_id: string|null
  paging:
    page: integer
    page_size: integer
    total_count: integer
