# ============================================================
# ASSET
# POLICY
# ============================================================

status: draft
layer: policy
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for economy assets.

# 2. POLICY RULES

- owner scope must be explicit
- valuation currency and timing must be attributable
- transfer must preserve from/to owner scope
- hidden ownership mutation is prohibited

# 3. FAILURE RULE

- missing asset identity must reject
- invalid owner scope must reject
- hidden ownership mutation must reject

