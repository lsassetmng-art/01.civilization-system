# ============================================================
# ACCESS ITEM ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Access item is a non-currency item used to unlock features or modes.

example:
- aerial_access_token

properties:
- non-transferable (default)
- not a monetary asset
- used for feature unlock
- may trigger permanent unlock

unlock_behavior:
- token grant may trigger feature_unlock creation
- token itself is not required after unlock
- token is not consumed but becomes functionally redundant

rules:
- access items must be explicitly granted
- unlock must be stored separately from item possession
- possession check must not be required after unlock

event_flow:
- access_item_granted
- feature_unlock_requested
- feature_unlock_created

final_rule:
Access items may trigger permanent feature unlocks,
but must not be required after unlock is established.
