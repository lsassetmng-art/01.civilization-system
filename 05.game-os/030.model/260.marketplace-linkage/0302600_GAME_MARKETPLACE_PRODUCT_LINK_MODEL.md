# ============================================================
# GAME MARKETPLACE PRODUCT LINK MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical linkage model between Civilization marketplace products and GameOS titles.

model_type:
- cross-os linkage truth model

primary_key:
- game_marketplace_product_link_id

natural_key:
- game_title_code
- marketplace_product_code
- link_version

fields:
- game_marketplace_product_link_id
- game_title_code
- marketplace_product_code
- link_version
- link_status
- seller_code
- release_code
- created_at
- updated_at

link_status_enum:
- draft
- approved
- active
- suspended
- archived

contract_version_rule:
Game marketplace product links must expose explicit version semantics.

truth_boundary:
Game marketplace linkage truth belongs to GameOS marketplace-linkage domain.
