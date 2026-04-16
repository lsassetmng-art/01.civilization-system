# ============================================================
# CONTENT RECOMMENDATION MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines recommended content blocks for proposal drafting.

recommendation_types:
- key_message
- supporting_point
- risk_note
- expected_effect_phrase
- internal_summary_hint

fields:
- content_recommendation_id
- forecast_id
- scenario_id
- template_type
- recommendation_type
- recommendation_text
- recommendation_reason
- updated_at
