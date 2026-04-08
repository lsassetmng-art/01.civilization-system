# ============================================================
# PROFIT ASSUMPTION MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: profit_assumption
owner: Boss
prepared_by: Zero

purpose:
Defines explicit profit preview assumptions.

fields:
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
- created_by_user_id
- created_at
- updated_at
