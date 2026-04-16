# ============================================================
# LOCAL ENTITY FIELD IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines recommended field groups for local entities.

entity_field_groups:

forecast_draft_entity:
- local_id
- forecast_id
- tier_code
- title
- target_object_type
- target_object_id
- period_start
- period_end
- grain_code
- demand_direction_code
- demand_strength_code
- forecast_quantity
- forecast_amount
- confidence_code
- selected_scenario_id
- draft_state_code
- updated_at

forecast_signal_entity:
- local_id
- signal_id
- forecast_id
- signal_type_code
- source_tier_code
- signal_summary
- signal_strength_code
- effect_direction_code
- effect_note
- updated_at

forecast_scenario_entity:
- local_id
- scenario_id
- forecast_id
- scenario_code
- scenario_name
- scenario_order
- quantity_delta
- amount_delta
- assumption_note
- is_selected
- updated_at

action_idea_entity:
- local_id
- action_id
- forecast_id
- scenario_id
- action_type_code
- action_title
- action_summary
- target_channel_code
- expected_effect_summary
- updated_at

proposal_draft_entity:
- local_id
- proposal_draft_id
- forecast_id
- scenario_id
- action_id
- draft_type_code
- title
- executive_summary
- problem_statement
- opportunity_statement
- recommended_action
- expected_business_effect
- draft_body
- draft_state_code
- updated_at

profit_preview_entity:
- local_id
- profit_preview_id
- forecast_id
- scenario_id
- action_id
- expected_sales_amount
- expected_cost_amount
- expected_gross_profit
- expected_execution_cost
- expected_operating_profit
- profit_margin_rate
- updated_at

profit_assumption_entity:
- local_id
- profit_assumption_id
- forecast_id
- scenario_id
- action_id
- quantity_assumption
- unit_price_assumption
- variable_cost_assumption
- fixed_execution_cost_assumption
- inventory_impact_note
- risk_factor_note
- updated_at

support_note:
Support/cache entities may include remote_state_version,
last_sync_at, and cache freshness fields where useful.
