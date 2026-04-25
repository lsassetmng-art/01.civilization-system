# ============================================================
# STATIC ART OS ENUM AND CONSTRAINT SKELETON
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

enum_targets:
  - asset_type
  - lifecycle_state
  - sales_state
  - subscription_state
  - entitlement_state
  - review_status
  - file_role
  - projection_status

constraint_targets:
  lifecycle_rules:
    - published_marketplace and published_library_only cannot coexist
    - archived cannot return to published states
    - restricted blocks full-access delivery
  sales_rules:
    - for_sale and preorder require base_price and base_currency
  subscription_rules:
    - included states require subscription_eligible=true
  projection_rules:
    - projection tables are not canonical write targets
  ownership_rules:
    - subscription_access never upgrades to owned_permanent
  review_rules:
    - pending review blocks creator-side edits on governed fields

implementation_checkpoints:
  - enum creation order fixed
  - check constraints mapped
  - trigger-required rules separated from pure check constraints
  - conflict-prone rules marked for app/service enforcement
