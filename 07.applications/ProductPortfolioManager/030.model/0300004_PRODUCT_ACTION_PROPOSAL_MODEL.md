# ============================================================
# PRODUCT ACTION PROPOSAL MODEL
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

entity: product_action_proposal

fields:
- proposal_id
- portfolio_item_id
- proposal_type
- proposal_title
- proposal_detail
- expected_effect
- priority_level
- status
- proposed_by
- approved_by
- approved_at
- created_at
- updated_at

proposal_examples:
- increase-price
- decrease-price
- strengthen-promotion
- reduce-stock
- revise-sourcing
- bundle-product
- retire-product
