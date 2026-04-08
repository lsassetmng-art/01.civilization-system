# ============================================================
# MARKET
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for market systems.

# 2. INTEGRATION SCOPE

- listings/orders to trade matching
- trades to payment/settlement systems
- market state to pricing/reporting consumers
- market audit to operations

# 3. INTEGRATION RULES

- listing/order scope must be explicit before matching handoff
- trade publication must preserve order identities
- invalid cross-market trade must not cross boundary
- rejected listing/order must preserve reason evidence

