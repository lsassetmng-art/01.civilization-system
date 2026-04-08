# ============================================================
# CURRENCY
# MODEL
# ============================================================

status: draft
layer: model
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for economy currency structure.

# 2. CORE ENTITIES

- currency_definition
- currency_rate
- currency_scope
- currency_status

# 3. STATE MODEL

currency_definition:
- currency_id
- currency_code
- currency_type_code
- issuer_scope
- currency_status

currency_rate:
- rate_id
- base_currency_code
- target_currency_code
- rate_value
- effective_at

currency_scope:
- scope_id
- currency_code
- market_scope
- usage_scope
- scope_status

currency_status:
- status_id
- currency_code
- active_flag
- frozen_flag
- changed_at

# 4. INTEGRITY RULES

- currency code must be unique
- rate must bind one base and one target currency
- currency scope must be explicit
- frozen currency must not be silently usable

