# ============================================================
# REWARD BALANCE
# MODEL
# ============================================================

status: draft
layer: model
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for reward balances.

# 2. CORE ENTITIES

- reward_balance_account
- reward_balance_entry
- reward_balance_snapshot
- reward_lock_state

# 3. STATE MODEL

reward_balance_account:
- account_id
- owner_scope
- reward_type_code
- account_status
- opened_at

reward_balance_entry:
- entry_id
- account_id
- entry_type_code
- delta_value
- entry_status

reward_balance_snapshot:
- snapshot_id
- account_id
- balance_value
- captured_at
- snapshot_status

reward_lock_state:
- lock_state_id
- account_id
- lock_reason
- locked_flag
- changed_at

# 4. INTEGRITY RULES

- one balance account per owner/reward type scope
- snapshot must reference one account
- lock state must be explicit
- locked account must not mutate silently

