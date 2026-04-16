# ============================================================
# INTERNAL EXPLANATION DRAFT MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines internal explanation drafts for approval and review contexts.

draft_types:
- internal_summary
- approval_pre_read
- manager_explanation
- meeting_talking_points

fields:
- internal_explanation_draft_id
- forecast_id
- scenario_id
- action_id
- proposal_variant_id
- draft_type
- title
- short_summary
- explanation_body
- updated_at
