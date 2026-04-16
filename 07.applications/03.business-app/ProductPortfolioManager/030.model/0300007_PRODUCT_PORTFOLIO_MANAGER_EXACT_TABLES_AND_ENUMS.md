# ============================================================
# PRODUCT PORTFOLIO MANAGER EXACT TABLES AND ENUMS
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Fix exact table, column, enum, key, and relationship contracts
for the first stable model boundary.

modeling_principles:
- additive only
- ERP truth stays outside application-owned tables
- application judgment stays inside application-owned tables
- draft and final states are separated where business meaning differs
- auditability is mandatory
- multilingual / multi-currency readiness is mandatory

# ============================================================
# 1. ENUM DEFINITIONS
# ============================================================

enums:

  ppm_period_type:
    - monthly
    - quarterly
    - half_year
    - yearly
    - custom

  ppm_lifecycle_stage:
    - unknown
    - launch
    - growth
    - mature
    - decline
    - retired

  ppm_classification_code:
    - focus
    - growth
    - profit_core
    - maintain
    - improve
    - risk_watch
    - retire_candidate
    - seasonal
    - test

  ppm_classification_draft_status:
    - draft
    - submitted
    - withdrawn
    - superseded

  ppm_proposal_type_code:
    - increase_price
    - decrease_price
    - strengthen_promotion
    - revise_channel
    - reduce_inventory
    - revise_sourcing
    - maintain
    - shrink
    - retire

  ppm_priority_level:
    - low
    - medium
    - high
    - critical

  ppm_proposal_status:
    - draft
    - submitted
    - in_review
    - approved
    - rejected
    - in_progress
    - completed

  ppm_issue_type_code:
    - pricing
    - inventory
    - promotion
    - profitability
    - demand
    - lifecycle
    - competition
    - other

  ppm_severity_level:
    - info
    - low
    - medium
    - high
    - critical

  ppm_resolution_status:
    - open
    - in_progress
    - resolved
    - closed

  ppm_comment_context_type:
    - product_note
    - review_comment
    - proposal_comment
    - approval_comment
    - internal_comment

  ppm_visibility_scope:
    - private
    - team
    - org
    - limited

  ppm_alert_type_code:
    - sales_drop
    - margin_drop
    - growth_slowdown
    - inventory_risk
    - forecast_gap
    - review_overdue
    - proposal_overdue

  ppm_alert_status:
    - open
    - acknowledged
    - resolved
    - dismissed

  ppm_forecast_scope_type:
    - product
    - category
    - brand

  ppm_review_session_status:
    - draft
    - scheduled
    - in_progress
    - completed
    - archived

  ppm_decision_type:
    - classification_change
    - proposal_adopted
    - proposal_rejected
    - hold
    - recheck
    - assign_action

  ppm_request_type:
    - classification_approval
    - proposal_approval
    - review_decision_approval

  ppm_approval_status:
    - pending
    - approved
    - rejected
    - sent_back
    - on_hold

  ppm_share_type:
    - private
    - team
    - org
    - limited

  ppm_shared_to_type:
    - user
    - role
    - team
    - org

  ppm_sync_status:
    - local_draft
    - pending_sync
    - synced
    - conflict
    - retry_required

# ============================================================
# 2. TABLE DEFINITIONS
# ============================================================

tables:

  - table_name: product_portfolio_item
    purpose:
      Core product portfolio target managed by the application.
    primary_key:
      - portfolio_item_id
    unique_keys:
      - [company_id, workspace_id, product_id]
    columns:
      - { name: portfolio_item_id, type: uuid, null: false }
      - { name: company_id, type: uuid, null: false }
      - { name: workspace_id, type: uuid, null: false }
      - { name: product_id, type: uuid, null: false }
      - { name: product_code, type: text, null: false }
      - { name: product_name, type: text, null: false }
      - { name: category_code, type: text, null: true }
      - { name: category_name, type: text, null: true }
      - { name: brand_code, type: text, null: true }
      - { name: brand_name, type: text, null: true }
      - { name: series_code, type: text, null: true }
      - { name: series_name, type: text, null: true }
      - { name: lifecycle_stage, type: ppm_lifecycle_stage, null: false, default: unknown }
      - { name: owner_user_id, type: uuid, null: true }
      - { name: current_classification_code, type: ppm_classification_code, null: true }
      - { name: current_priority_rank, type: integer, null: true }
      - { name: active_flag, type: boolean, null: false, default: true }
      - { name: created_at, type: timestamptz, null: false }
      - { name: updated_at, type: timestamptz, null: false }
    indexes:
      - [company_id, workspace_id]
      - [company_id, workspace_id, category_code]
      - [company_id, workspace_id, brand_code]
      - [company_id, workspace_id, current_classification_code]

  - table_name: product_metric_snapshot
    purpose:
      Frozen metrics used for judgment reproducibility.
    primary_key:
      - metric_snapshot_id
    columns:
      - { name: metric_snapshot_id, type: uuid, null: false }
      - { name: portfolio_item_id, type: uuid, null: false }
      - { name: metric_period_type, type: ppm_period_type, null: false }
      - { name: metric_period_start, type: date, null: false }
      - { name: metric_period_end, type: date, null: false }
      - { name: transaction_currency_code, type: text, null: true }
      - { name: reporting_currency_code, type: text, null: true }
      - { name: sales_amount, type: numeric(18,2), null: true }
      - { name: sales_quantity, type: numeric(18,4), null: true }
      - { name: gross_profit_amount, type: numeric(18,2), null: true }
      - { name: gross_profit_rate, type: numeric(9,4), null: true }
      - { name: cost_amount, type: numeric(18,2), null: true }
      - { name: inventory_quantity, type: numeric(18,4), null: true }
      - { name: inventory_amount, type: numeric(18,2), null: true }
      - { name: growth_rate, type: numeric(9,4), null: true }
      - { name: previous_period_sales_amount, type: numeric(18,2), null: true }
      - { name: previous_year_sales_amount, type: numeric(18,2), null: true }
      - { name: source_system_code, type: text, null: true }
      - { name: source_generated_at, type: timestamptz, null: true }
      - { name: fetched_at, type: timestamptz, null: false }
    indexes:
      - [portfolio_item_id, metric_period_type, metric_period_start, metric_period_end]
      - [portfolio_item_id, fetched_at]

  - table_name: product_score
    purpose:
      Stored score output for product comparison and classification support.
    primary_key:
      - product_score_id
    columns:
      - { name: product_score_id, type: uuid, null: false }
      - { name: portfolio_item_id, type: uuid, null: false }
      - { name: score_period_type, type: ppm_period_type, null: false }
      - { name: score_period_start, type: date, null: false }
      - { name: score_period_end, type: date, null: false }
      - { name: score_version, type: text, null: false }
      - { name: sales_score, type: numeric(9,4), null: true }
      - { name: margin_score, type: numeric(9,4), null: true }
      - { name: growth_score, type: numeric(9,4), null: true }
      - { name: inventory_score, type: numeric(9,4), null: true }
      - { name: risk_score, type: numeric(9,4), null: true }
      - { name: strategic_score, type: numeric(9,4), null: true }
      - { name: total_score, type: numeric(9,4), null: true }
      - { name: score_summary_text_key, type: text, null: true }
      - { name: calculation_basis_ref, type: text, null: true }
      - { name: calculated_at, type: timestamptz, null: false }
    indexes:
      - [portfolio_item_id, score_period_type, score_period_start, score_period_end]
      - [portfolio_item_id, calculated_at]
      - [score_version]

  - table_name: product_classification
    purpose:
      Approved strategic classification history.
    primary_key:
      - classification_id
    columns:
      - { name: classification_id, type: uuid, null: false }
      - { name: portfolio_item_id, type: uuid, null: false }
      - { name: classification_code, type: ppm_classification_code, null: false }
      - { name: classification_reason, type: text, null: true }
      - { name: decided_by_user_id, type: uuid, null: false }
      - { name: decision_source_type, type: text, null: false }
      - { name: effective_from, type: timestamptz, null: false }
      - { name: effective_to, type: timestamptz, null: true }
      - { name: current_flag, type: boolean, null: false, default: true }
      - { name: created_at, type: timestamptz, null: false }
    indexes:
      - [portfolio_item_id, current_flag]
      - [portfolio_item_id, effective_from]

  - table_name: product_classification_draft
    purpose:
      Draft or submitted classification change before approval/finalization.
    primary_key:
      - classification_draft_id
    columns:
      - { name: classification_draft_id, type: uuid, null: false }
      - { name: portfolio_item_id, type: uuid, null: false }
      - { name: proposed_classification_code, type: ppm_classification_code, null: false }
      - { name: proposed_reason, type: text, null: true }
      - { name: based_score_id, type: uuid, null: true }
      - { name: draft_by_user_id, type: uuid, null: false }
      - { name: draft_status, type: ppm_classification_draft_status, null: false }
      - { name: last_saved_at, type: timestamptz, null: false }
    indexes:
      - [portfolio_item_id, draft_status]
      - [draft_by_user_id, draft_status]

  - table_name: product_action_proposal
    purpose:
      Product-level action proposal.
    primary_key:
      - proposal_id
    columns:
      - { name: proposal_id, type: uuid, null: false }
      - { name: portfolio_item_id, type: uuid, null: false }
      - { name: proposal_type_code, type: ppm_proposal_type_code, null: false }
      - { name: proposal_title, type: text, null: false }
      - { name: proposal_detail, type: text, null: false }
      - { name: expected_effect, type: text, null: true }
      - { name: risk_note, type: text, null: true }
      - { name: priority_level, type: ppm_priority_level, null: true }
      - { name: due_date, type: date, null: true }
      - { name: owner_user_id, type: uuid, null: true }
      - { name: proposal_status, type: ppm_proposal_status, null: false }
      - { name: created_by_user_id, type: uuid, null: false }
      - { name: created_at, type: timestamptz, null: false }
      - { name: updated_at, type: timestamptz, null: false }
    indexes:
      - [portfolio_item_id, proposal_status]
      - [owner_user_id, proposal_status]
      - [due_date]

  - table_name: product_action_proposal_history
    purpose:
      State change history for proposals.
    primary_key:
      - proposal_history_id
    columns:
      - { name: proposal_history_id, type: uuid, null: false }
      - { name: proposal_id, type: uuid, null: false }
      - { name: before_status, type: ppm_proposal_status, null: true }
      - { name: after_status, type: ppm_proposal_status, null: false }
      - { name: changed_by_user_id, type: uuid, null: false }
      - { name: change_reason, type: text, null: true }
      - { name: changed_at, type: timestamptz, null: false }
    indexes:
      - [proposal_id, changed_at]

  - table_name: product_issue_note
    purpose:
      Structured issue tracking by product.
    primary_key:
      - issue_note_id
    columns:
      - { name: issue_note_id, type: uuid, null: false }
      - { name: portfolio_item_id, type: uuid, null: false }
      - { name: issue_type_code, type: ppm_issue_type_code, null: false }
      - { name: severity_level, type: ppm_severity_level, null: false }
      - { name: issue_title, type: text, null: false }
      - { name: issue_detail, type: text, null: true }
      - { name: owner_user_id, type: uuid, null: true }
      - { name: resolution_status, type: ppm_resolution_status, null: false, default: open }
      - { name: created_at, type: timestamptz, null: false }
      - { name: updated_at, type: timestamptz, null: false }
    indexes:
      - [portfolio_item_id, resolution_status]
      - [owner_user_id, resolution_status]

  - table_name: product_comment
    purpose:
      Contextual comments and notes.
    primary_key:
      - comment_id
    columns:
      - { name: comment_id, type: uuid, null: false }
      - { name: portfolio_item_id, type: uuid, null: false }
      - { name: context_type, type: ppm_comment_context_type, null: false }
      - { name: related_entity_type, type: text, null: true }
      - { name: related_entity_id, type: uuid, null: true }
      - { name: comment_body, type: text, null: false }
      - { name: visibility_scope, type: ppm_visibility_scope, null: false, default: private }
      - { name: created_by_user_id, type: uuid, null: false }
      - { name: created_at, type: timestamptz, null: false }
      - { name: updated_at, type: timestamptz, null: false }
    indexes:
      - [portfolio_item_id, context_type]
      - [related_entity_type, related_entity_id]
      - [created_by_user_id]

  - table_name: product_alert
    purpose:
      Alert records surfaced by the application.
    primary_key:
      - alert_id
    columns:
      - { name: alert_id, type: uuid, null: false }
      - { name: portfolio_item_id, type: uuid, null: false }
      - { name: alert_type_code, type: ppm_alert_type_code, null: false }
      - { name: severity_level, type: ppm_severity_level, null: false }
      - { name: alert_title_key, type: text, null: false }
      - { name: alert_message_key, type: text, null: false }
      - { name: alert_status, type: ppm_alert_status, null: false, default: open }
      - { name: detected_at, type: timestamptz, null: false }
      - { name: resolved_at, type: timestamptz, null: true }
      - { name: assigned_user_id, type: uuid, null: true }
    indexes:
      - [portfolio_item_id, alert_status]
      - [severity_level, alert_status]
      - [assigned_user_id, alert_status]

  - table_name: product_forecast_reference
    purpose:
      Forecast values consumed as advisory references.
    primary_key:
      - forecast_reference_id
    columns:
      - { name: forecast_reference_id, type: uuid, null: false }
      - { name: portfolio_item_id, type: uuid, null: false }
      - { name: forecast_scope_type, type: ppm_forecast_scope_type, null: false }
      - { name: forecast_period_type, type: ppm_period_type, null: false }
      - { name: forecast_period_start, type: date, null: false }
      - { name: forecast_period_end, type: date, null: false }
      - { name: forecast_quantity, type: numeric(18,4), null: true }
      - { name: forecast_sales_amount, type: numeric(18,2), null: true }
      - { name: forecast_currency_code, type: text, null: true }
      - { name: confidence_level, type: numeric(9,4), null: true }
      - { name: forecast_source_code, type: text, null: false }
      - { name: forecast_generated_at, type: timestamptz, null: true }
      - { name: fetched_at, type: timestamptz, null: false }
    indexes:
      - [portfolio_item_id, forecast_period_type, forecast_period_start, forecast_period_end]
      - [forecast_source_code, forecast_generated_at]

  - table_name: product_review_session
    purpose:
      Review meeting parent entity.
    primary_key:
      - review_session_id
    columns:
      - { name: review_session_id, type: uuid, null: false }
      - { name: company_id, type: uuid, null: false }
      - { name: workspace_id, type: uuid, null: false }
      - { name: review_title, type: text, null: false }
      - { name: target_period_start, type: date, null: false }
      - { name: target_period_end, type: date, null: false }
      - { name: target_scope_description, type: text, null: true }
      - { name: scheduled_at, type: timestamptz, null: true }
      - { name: status, type: ppm_review_session_status, null: false }
      - { name: created_by_user_id, type: uuid, null: false }
      - { name: created_at, type: timestamptz, null: false }
      - { name: updated_at, type: timestamptz, null: false }
    indexes:
      - [company_id, workspace_id, status]
      - [scheduled_at]

  - table_name: product_review_session_item
    purpose:
      Product membership in a review session.
    primary_key:
      - review_session_item_id
    unique_keys:
      - [review_session_id, portfolio_item_id]
    columns:
      - { name: review_session_item_id, type: uuid, null: false }
      - { name: review_session_id, type: uuid, null: false }
      - { name: portfolio_item_id, type: uuid, null: false }
      - { name: item_order_no, type: integer, null: true }
      - { name: added_reason, type: text, null: true }
      - { name: added_by_user_id, type: uuid, null: false }
      - { name: created_at, type: timestamptz, null: false }
    indexes:
      - [review_session_id, item_order_no]

  - table_name: product_review_decision
    purpose:
      Decision captured during a review session.
    primary_key:
      - review_decision_id
    columns:
      - { name: review_decision_id, type: uuid, null: false }
      - { name: review_session_id, type: uuid, null: false }
      - { name: portfolio_item_id, type: uuid, null: false }
      - { name: decision_type, type: ppm_decision_type, null: false }
      - { name: before_classification_code, type: ppm_classification_code, null: true }
      - { name: after_classification_code, type: ppm_classification_code, null: true }
      - { name: proposal_action, type: text, null: true }
      - { name: assigned_user_id, type: uuid, null: true }
      - { name: due_date, type: date, null: true }
      - { name: decision_note, type: text, null: true }
      - { name: decided_by_user_id, type: uuid, null: false }
      - { name: decided_at, type: timestamptz, null: false }
    indexes:
      - [review_session_id, decided_at]
      - [portfolio_item_id, decided_at]
      - [assigned_user_id, due_date]

  - table_name: product_approval_request
    purpose:
      Approval request parent entity.
    primary_key:
      - approval_request_id
    columns:
      - { name: approval_request_id, type: uuid, null: false }
      - { name: request_type, type: ppm_request_type, null: false }
      - { name: target_entity_type, type: text, null: false }
      - { name: target_entity_id, type: uuid, null: false }
      - { name: requested_by_user_id, type: uuid, null: false }
      - { name: current_status, type: ppm_approval_status, null: false, default: pending }
      - { name: requested_at, type: timestamptz, null: false }
      - { name: due_at, type: timestamptz, null: true }
    indexes:
      - [current_status, due_at]
      - [target_entity_type, target_entity_id]
      - [requested_by_user_id, current_status]

  - table_name: product_approval_decision
    purpose:
      Approval decision trail.
    primary_key:
      - approval_decision_id
    columns:
      - { name: approval_decision_id, type: uuid, null: false }
      - { name: approval_request_id, type: uuid, null: false }
      - { name: decision_status, type: ppm_approval_status, null: false }
      - { name: decision_comment, type: text, null: true }
      - { name: decided_by_user_id, type: uuid, null: false }
      - { name: decided_at, type: timestamptz, null: false }
    indexes:
      - [approval_request_id, decided_at]

  - table_name: product_share_scope
    purpose:
      Explicit sharing scope registry.
    primary_key:
      - share_scope_id
    columns:
      - { name: share_scope_id, type: uuid, null: false }
      - { name: target_entity_type, type: text, null: false }
      - { name: target_entity_id, type: uuid, null: false }
      - { name: share_type, type: ppm_share_type, null: false }
      - { name: shared_to_type, type: ppm_shared_to_type, null: false }
      - { name: shared_to_id, type: text, null: false }
      - { name: created_by_user_id, type: uuid, null: false }
      - { name: created_at, type: timestamptz, null: false }
      - { name: revoked_at, type: timestamptz, null: true }
    indexes:
      - [target_entity_type, target_entity_id]
      - [shared_to_type, shared_to_id]
      - [revoked_at]

  - table_name: product_audit_event
    purpose:
      Important audit trail for high-value actions.
    primary_key:
      - audit_event_id
    columns:
      - { name: audit_event_id, type: uuid, null: false }
      - { name: entity_type, type: text, null: false }
      - { name: entity_id, type: uuid, null: false }
      - { name: event_type, type: text, null: false }
      - { name: before_payload, type: jsonb, null: true }
      - { name: after_payload, type: jsonb, null: true }
      - { name: actor_user_id, type: uuid, null: false }
      - { name: event_at, type: timestamptz, null: false }
      - { name: source_channel, type: text, null: true }
    indexes:
      - [entity_type, entity_id, event_at]
      - [event_type, event_at]
      - [actor_user_id, event_at]

  - table_name: product_view_preset
    purpose:
      Saved view/filter/sort preset.
    primary_key:
      - view_preset_id
    columns:
      - { name: view_preset_id, type: uuid, null: false }
      - { name: user_id, type: uuid, null: false }
      - { name: preset_name, type: text, null: false }
      - { name: target_screen_code, type: text, null: false }
      - { name: filter_payload, type: jsonb, null: true }
      - { name: sort_payload, type: jsonb, null: true }
      - { name: column_payload, type: jsonb, null: true }
      - { name: is_default, type: boolean, null: false, default: false }
      - { name: created_at, type: timestamptz, null: false }
      - { name: updated_at, type: timestamptz, null: false }
    indexes:
      - [user_id, target_screen_code]
      - [user_id, is_default]

  - table_name: product_sync_state
    purpose:
      Draft/sync/conflict state tracker.
    primary_key:
      - sync_state_id
    columns:
      - { name: sync_state_id, type: uuid, null: false }
      - { name: entity_type, type: text, null: false }
      - { name: entity_id, type: uuid, null: false }
      - { name: local_state, type: text, null: true }
      - { name: sync_status, type: ppm_sync_status, null: false }
      - { name: conflict_flag, type: boolean, null: false, default: false }
      - { name: last_synced_at, type: timestamptz, null: true }
      - { name: last_local_updated_at, type: timestamptz, null: true }
    indexes:
      - [entity_type, entity_id]
      - [sync_status, conflict_flag]

# ============================================================
# 3. FOREIGN KEY CONTRACTS
# ============================================================

foreign_keys:

  - from: product_metric_snapshot.portfolio_item_id
    to: product_portfolio_item.portfolio_item_id

  - from: product_score.portfolio_item_id
    to: product_portfolio_item.portfolio_item_id

  - from: product_classification.portfolio_item_id
    to: product_portfolio_item.portfolio_item_id

  - from: product_classification_draft.portfolio_item_id
    to: product_portfolio_item.portfolio_item_id

  - from: product_classification_draft.based_score_id
    to: product_score.product_score_id

  - from: product_action_proposal.portfolio_item_id
    to: product_portfolio_item.portfolio_item_id

  - from: product_action_proposal_history.proposal_id
    to: product_action_proposal.proposal_id

  - from: product_issue_note.portfolio_item_id
    to: product_portfolio_item.portfolio_item_id

  - from: product_comment.portfolio_item_id
    to: product_portfolio_item.portfolio_item_id

  - from: product_alert.portfolio_item_id
    to: product_portfolio_item.portfolio_item_id

  - from: product_forecast_reference.portfolio_item_id
    to: product_portfolio_item.portfolio_item_id

  - from: product_review_session_item.review_session_id
    to: product_review_session.review_session_id

  - from: product_review_session_item.portfolio_item_id
    to: product_portfolio_item.portfolio_item_id

  - from: product_review_decision.review_session_id
    to: product_review_session.review_session_id

  - from: product_review_decision.portfolio_item_id
    to: product_portfolio_item.portfolio_item_id

  - from: product_approval_decision.approval_request_id
    to: product_approval_request.approval_request_id

# ============================================================
# 4. STATE TRANSITION RULES
# ============================================================

state_transition_rules:

  classification_draft:
    allowed_transitions:
      draft:
        - submitted
        - withdrawn
        - superseded
      submitted:
        - withdrawn
        - superseded
      withdrawn: []
      superseded: []

  proposal_status:
    allowed_transitions:
      draft:
        - submitted
      submitted:
        - in_review
        - rejected
      in_review:
        - approved
        - rejected
        - draft
      approved:
        - in_progress
      in_progress:
        - completed
      rejected: []
      completed: []

  approval_status:
    allowed_transitions:
      pending:
        - approved
        - rejected
        - sent_back
        - on_hold
      on_hold:
        - approved
        - rejected
        - sent_back
      sent_back: []
      approved: []
      rejected: []

# ============================================================
# 5. BUSINESS CONSTRAINT RULES
# ============================================================

business_constraints:
- product_portfolio_item must remain unique per company/workspace/product_id
- current approved classification must be represented by at most one product_classification row with current_flag=true per portfolio_item_id
- product_classification_draft and product_classification must not be merged
- product_metric_snapshot date range must satisfy metric_period_start <= metric_period_end
- product_score date range must satisfy score_period_start <= score_period_end
- product_forecast_reference date range must satisfy forecast_period_start <= forecast_period_end
- monetary values must not be interpreted without currency context
- product_approval_request with current_status in approved/rejected/sent_back must be treated as closed
- product_review_session_item must be unique per review session and product
- share scope revocation must remain traceable through revoked_at rather than deletion-first design

# ============================================================
# 6. QUERY HOTSPOTS
# ============================================================

query_hotspots:
- portfolio list by company/workspace with filters on classification/category/brand
- latest metric snapshot and latest score per portfolio item
- open proposals by owner and due date
- open alerts by severity and assignee
- pending approvals by due_at
- review session details with joined review items and decisions
- audit history by entity_type/entity_id

# ============================================================
# 7. PHASE-1 MINIMUM TABLE SET
# ============================================================

phase_1_minimum_tables:
- product_portfolio_item
- product_metric_snapshot
- product_score
- product_classification
- product_classification_draft
- product_action_proposal
- product_action_proposal_history
- product_comment
- product_alert
- product_forecast_reference
- product_view_preset

phase_2_required_tables:
- product_issue_note
- product_review_session
- product_review_session_item
- product_review_decision
- product_approval_request
- product_approval_decision
- product_share_scope
- product_audit_event
- product_sync_state
