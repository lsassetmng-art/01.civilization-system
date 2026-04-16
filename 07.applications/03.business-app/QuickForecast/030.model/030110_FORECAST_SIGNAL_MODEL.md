# ============================================================
# FORECAST SIGNAL MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: forecast_signal
owner: Boss
prepared_by: Zero

purpose:
Represents an input signal used during forecasting.

signal_types:
- climate
- season
- area
- event
- competitor
- market_general
- historical_actual
- inventory
- backlog
- manual_assumption

fields:
- signal_id
- forecast_id
- signal_type_code
- source_tier_code
- source_reference
- signal_summary
- signal_strength_code
- effect_direction_code
- effect_note
- created_at
