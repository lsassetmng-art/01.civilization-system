# ============================================================
# MARKET EVENT INPUT MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines market and business event inputs used in forecast basis.

event_types:
- seasonality
- local_event
- campaign
- competitor_move
- market_change
- manual_context

fields:
- market_event_input_id
- forecast_id
- event_type
- event_title
- event_summary
- expected_impact_summary
- impact_direction_code
- impact_strength_code
- updated_at
