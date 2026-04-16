# ============================================================
# FORECAST EDITOR FIELD SPEC
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the field-level structure of forecast editor UI.

header_fields:
- draft_title
- tier_badge
- target_object_type
- target_object_id
- period_start
- period_end
- grain_code

signal_fields:
- season_signal
- climate_signal
- area_signal
- event_signal
- competitor_general_signal
- market_general_signal
- historical_actual_signal_pro
- inventory_signal_pro
- backlog_signal_pro
- manual_assumption

forecast_fields:
- demand_direction
- demand_strength
- forecast_quantity
- forecast_amount
- confidence_code
- assumption_note

actions:
- save_draft
- duplicate_scenario
- continue_to_action
