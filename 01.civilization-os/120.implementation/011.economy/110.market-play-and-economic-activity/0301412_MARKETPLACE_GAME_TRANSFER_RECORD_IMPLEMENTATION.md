# ============================================================
# MARKETPLACE GAME TRANSFER RECORD
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy

# 1. PURPOSE

Defines immutable completed transfer record storage.

# 2. TABLE PROFILE

Primary profile:
- transaction

# 3. PHYSICAL TABLE

Table:
- marketplace_game_transfer_record

# 4. COLUMNS

Common columns:
- id
- status
- trace_id
- created_at
- updated_at

Domain columns:
- asset_ref
- previous_owner_ref
- next_owner_ref
- transfer_reason
- completed_at

# 5. KEYS AND CONSTRAINTS

PK:
- id

Indexes:
- idx_marketplace_game_transfer_record_asset_ref
- idx_marketplace_game_transfer_record_previous_owner_ref
- idx_marketplace_game_transfer_record_next_owner_ref
- idx_marketplace_game_transfer_record_completed_at

# 6. SOURCE OF TRUTH

Immutable post-transfer authoritative record.

# 7. FAILURE HANDLING

Fail closed on:
- unapproved source transfer
- duplicate completion
