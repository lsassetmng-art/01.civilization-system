# ============================================================
# GAME STORE LISTING MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game store listing model.

model_type:
- store listing truth model

primary_key:
- game_store_listing_id

natural_key:
- listing_scope
- listing_code
- listing_version

fields:
- game_store_listing_id
- listing_scope
- listing_code
- listing_version
- listing_status
- title_code
- pricing_summary
- availability_summary
- rating_summary
- effective_from
- effective_until
- created_at
- updated_at

listing_status_enum:
- draft
- approved
- published
- suspended
- archived

contract_version_rule:
Game store listings must expose explicit version semantics.

truth_boundary:
Game store listing truth belongs to GameOS distribution-platform domain.
