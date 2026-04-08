# ============================================================
# PRICE
# MODEL
# ============================================================

status: draft
layer: model
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for prices.

# 2. CORE ENTITIES

- price_definition
- price_quote
- price_history
- price_control_state

# 3. STATE MODEL

price_definition:
- price_definition_id
- item_scope
- currency_code
- pricing_type_code
- price_status

price_quote:
- price_quote_id
- price_definition_id
- quoted_value
- quoted_at
- quote_status

price_history:
- price_history_id
- price_definition_id
- historical_value
- effective_at
- history_status

price_control_state:
- control_state_id
- price_definition_id
- control_type_code
- control_status
- changed_at

# 4. INTEGRITY RULES

- price definition must preserve item and currency scope
- quote and history must reference one price definition
- control state must be explicit
- hidden price mutation is prohibited

