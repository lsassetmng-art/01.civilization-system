# ============================================================
# ASSET
# MODEL
# ============================================================

status: draft
layer: model
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for assets in economy scope.

# 2. CORE ENTITIES

- asset_record
- asset_owner_state
- asset_valuation
- asset_transfer_record

# 3. STATE MODEL

asset_record:
- asset_id
- asset_type_code
- asset_scope
- asset_status
- created_at

asset_owner_state:
- owner_state_id
- asset_id
- owner_scope
- ownership_status
- effective_from

asset_valuation:
- valuation_id
- asset_id
- valuation_value
- valuation_currency
- valued_at

asset_transfer_record:
- transfer_id
- asset_id
- from_owner_scope
- to_owner_scope
- transfer_status

# 4. INTEGRITY RULES

- asset owner state must preserve owner scope
- valuation must reference one asset
- transfer record must preserve from/to owner scope
- hidden ownership mutation is prohibited

