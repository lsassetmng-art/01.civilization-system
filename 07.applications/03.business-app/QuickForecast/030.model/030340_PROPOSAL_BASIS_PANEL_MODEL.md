# ============================================================
# PROPOSAL BASIS PANEL MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the evidence / basis panel attached to a proposal draft.

fields:
- proposal_basis_panel_id
- forecast_id
- scenario_id
- action_id
- selected_assumptions
- selected_basis_notes
- selected_market_events
- expected_effect_summary
- profit_basis_summary
- confidence_code
- updated_at

rule:
The basis panel must explain
why the proposal draft exists in its current form.
