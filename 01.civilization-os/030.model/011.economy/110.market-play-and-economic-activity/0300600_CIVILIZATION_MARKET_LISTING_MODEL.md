# ============================================================
# CIVILIZATION MARKET LISTING MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical market listing model.

model_type:
- market truth model

primary_key:
- market_listing_id

natural_key:
- market_scope
- listing_code

fields:
- market_listing_id
- market_scope
- listing_code
- listing_status
- asset_code
- listed_quantity
- pricing_basis
- owner_scope
- effective_from
- effective_until
- created_at
- updated_at

listing_status_enum:
- active
- suspended
- filled
- expired
- cancelled

truth_boundary:
Market listing truth belongs to CivilizationOS governed market domain.
