# ============================================================
# INTERNAL RESPONSE TRACKING MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines internal response tracking before formal enterprise handoff.

tracking_states:
- draft_only
- shared
- review_requested
- under_review
- returned
- approval_requested
- approved
- handoff_ready
- handed_off

fields:
- internal_response_tracking_id
- forecast_id
- proposal_variant_id
- current_tracking_state
- last_actor
- last_action_summary
- last_action_at
- updated_at
