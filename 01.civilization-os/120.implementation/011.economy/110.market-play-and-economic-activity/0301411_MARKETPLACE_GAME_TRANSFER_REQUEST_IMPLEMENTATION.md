# ============================================================
# MARKETPLACE GAME TRANSFER REQUEST
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy

# 1. PURPOSE

Defines physical transfer request workflow storage.

# 2. TABLE PROFILE

Primary profile:
- workflow

# 3. PHYSICAL TABLE

Table:
- marketplace_game_transfer_request

# 4. COLUMNS

Common columns:
- id
- workflow_status
- review_status
- approval_status
- reason_code
- created_at
- updated_at

Domain columns:
- asset_ref
- current_owner_ref
- requested_target_ref
- requested_at
- reviewed_at

# 5. KEYS AND CONSTRAINTS

PK:
- id

Indexes:
- idx_marketplace_game_transfer_request_asset_ref
- idx_marketplace_game_transfer_request_current_owner_ref
- idx_marketplace_game_transfer_request_requested_target_ref
- idx_marketplace_game_transfer_request_workflow_status

# 6. SOURCE OF TRUTH

Authoritative transfer request workflow row.

# 7. FAILURE HANDLING

Fail closed on:
- ownership mismatch
- unresolved approval state
