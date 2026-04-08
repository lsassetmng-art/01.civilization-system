# ============================================================
# TRADE
# MODEL
# ============================================================

status: draft
layer: model
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for trade.

# 2. CORE ENTITIES

- trade_route
- trade_offer
- trade_contract
- trade_result

# 3. STATE MODEL

trade_route:
- trade_route_id
- source_scope
- target_scope
- route_type_code
- route_status

trade_offer:
- trade_offer_id
- trade_route_id
- offer_scope
- offer_value
- offer_status

trade_contract:
- trade_contract_id
- trade_offer_id
- contract_scope
- contract_status
- contracted_at

trade_result:
- trade_result_id
- trade_contract_id
- result_code
- completed_at
- result_status

# 4. INTEGRITY RULES

- trade offer belongs to one route
- contract belongs to one offer
- result belongs to one contract
- invalid cross-scope trade is prohibited

