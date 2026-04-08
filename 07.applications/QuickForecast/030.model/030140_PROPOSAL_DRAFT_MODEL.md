# ============================================================
# PROPOSAL DRAFT MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: proposal_draft
owner: Boss
prepared_by: Zero

purpose:
Represents a proposal or planning draft generated from forecast and action.

draft_types:
- customer_proposal
- internal_plan
- campaign_plan
- sales_talk_draft
- meeting_memo_draft
- approval_outline

fields:
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
- created_at
- updated_at
