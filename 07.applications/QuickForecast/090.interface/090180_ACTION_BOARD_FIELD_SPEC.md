# ============================================================
# ACTION BOARD FIELD SPEC
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the field-level structure of action idea board UI.

context_fields:
- selected_forecast_title
- selected_scenario
- demand_direction
- demand_strength
- key_signal_summary

action_card_fields:
- action_type
- action_title
- expected_effect_summary
- target_channel
- execution_timing_note
- selection_state

editable_fields:
- action_summary
- target_customer_type
- target_channel_code
- timing_note
- expected_effect_note

actions:
- select_action
- add_custom_action
- continue_to_proposal
