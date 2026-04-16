# ============================================================
# PRODUCT PROPOSAL MODELS
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

entities:
- product_action_proposal
- product_action_proposal_history

product_action_proposal_fields:
- proposal_id
- portfolio_item_id
- proposal_type_code
- proposal_title
- proposal_detail
- expected_effect
- risk_note
- priority_level
- due_date
- owner_user_id
- proposal_status
- created_by_user_id
- created_at
- updated_at

product_action_proposal_history_fields:
- proposal_history_id
- proposal_id
- before_status
- after_status
- changed_by_user_id
- change_reason
- changed_at

proposal_examples:
- increase_price
- decrease_price
- strengthen_promotion
- revise_channel
- reduce_inventory
- revise_sourcing
- maintain
- shrink
- retire
