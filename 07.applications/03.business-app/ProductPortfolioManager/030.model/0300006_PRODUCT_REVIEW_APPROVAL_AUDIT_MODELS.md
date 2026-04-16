# ============================================================
# PRODUCT REVIEW APPROVAL AUDIT MODELS
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

entities:
- product_review_session
- product_review_session_item
- product_review_decision
- product_approval_request
- product_approval_decision
- product_alert
- product_forecast_reference
- product_comment
- product_issue_note
- product_share_scope
- product_audit_event
- product_view_preset
- product_sync_state

review_session_fields:
- review_session_id
- company_id
- workspace_id
- review_title
- target_period_start
- target_period_end
- target_scope_description
- scheduled_at
- status
- created_by_user_id
- created_at
- updated_at

review_decision_fields:
- review_decision_id
- review_session_id
- portfolio_item_id
- decision_type
- before_classification_code
- after_classification_code
- proposal_action
- assigned_user_id
- due_date
- decision_note
- decided_by_user_id
- decided_at

approval_request_fields:
- approval_request_id
- request_type
- target_entity_type
- target_entity_id
- requested_by_user_id
- current_status
- requested_at
- due_at

audit_event_fields:
- audit_event_id
- entity_type
- entity_id
- event_type
- before_payload
- after_payload
- actor_user_id
- event_at
- source_channel
