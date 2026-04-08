# ============================================================
# ERP HANDOFF MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: erp_handoff
owner: Boss
prepared_by: Zero

purpose:
Defines governed ERP handoff state from QuickForecast Pro.

fields:
- erp_handoff_id
- source_target_type
- source_target_id
- source_forecast_id
- selected_scenario_id
- payload_version
- payload_summary
- handoff_state_code
- target_company_id
- target_flow_code
- requested_by_user_id
- requested_at
- accepted_at
- rejected_at
- result_code
- result_message

handoff_states:
- not_prepared
- ready
- pending
- accepted
- rejected
- failed
