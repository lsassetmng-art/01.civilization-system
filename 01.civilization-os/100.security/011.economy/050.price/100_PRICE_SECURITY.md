# ============================================================
# PRICE
# SECURITY
# ============================================================

status: draft
layer: security
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for prices.

# 2. SECURITY SCOPE

- price-definition integrity
- quote/history integrity
- control-state authorization
- price audit protection

# 3. SECURITY RULES

- effective quote source must be attributable
- control-state change requires explicit authorization
- hidden price mutation must be detectable
- audit output must preserve item/currency scope

