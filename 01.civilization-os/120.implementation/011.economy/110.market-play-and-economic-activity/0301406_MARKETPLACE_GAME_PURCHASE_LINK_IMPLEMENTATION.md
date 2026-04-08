# ============================================================
# MARKETPLACE GAME PURCHASE LINK
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for MARKETPLACE GAME PURCHASE LINK.

# 2. TABLE PROFILE

Primary profile:
- bridge

# 3. PHYSICAL TABLE

Table:
- marketplace_game_purchase_link

# 4. COMMON COLUMN GROUPS

Applied groups:
- identity columns
- audit columns
- lifecycle columns

Additional groups:
- trace columns
- period columns
- workflow columns
  - only where applicable

# 5. COLUMNS

- id
- status
- created_at
- updated_at
- order_ref
- purchaser_ref
- product_ref
- entitlement_ref
- granted_at
- access_status_code

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_marketplace_game_purchase_link_order_ref
- idx_marketplace_game_purchase_link_purchaser_ref
- idx_marketplace_game_purchase_link_product_ref
- idx_marketplace_game_purchase_link_access_status_code

Checks:
- granted_at is required

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this market-play / marketplace concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid actor / asset / company / jurisdiction linkage
- lifecycle ambiguity
- invalid economic, trade, or market semantics
