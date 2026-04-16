# ============================================================
# PROPOSAL TEMPLATE SELECTION MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines proposal template selection.

template_types:
- new_business
- existing_account_growth
- internal_approval
- campaign_proposal
- inventory_adjustment
- custom

fields:
- proposal_template_selection_id
- forecast_id
- template_type
- template_label
- selected_flag
- updated_at
