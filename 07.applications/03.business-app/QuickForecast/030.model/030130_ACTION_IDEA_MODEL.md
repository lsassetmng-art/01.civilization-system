# ============================================================
# ACTION IDEA MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: action_idea
owner: Boss
prepared_by: Zero

purpose:
Represents a business action candidate derived from forecast meaning.

action_examples:
- campaign
- price_adjustment
- bundle_offer
- inventory_prebuild
- replenishment_push
- seasonal_display
- customer_proposal
- internal_planning

fields:
- action_id
- forecast_id
- scenario_id
- action_type_code
- action_title
- action_summary
- target_customer_type
- target_channel_code
- expected_effect_summary
- execution_timing_note
- created_at
- updated_at
