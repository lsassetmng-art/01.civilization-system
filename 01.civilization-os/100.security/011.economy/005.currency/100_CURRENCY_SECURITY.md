# ============================================================
# CURRENCY
# SECURITY
# ============================================================

status: draft
layer: security
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for currencies.

# 2. SECURITY SCOPE

- currency-definition integrity
- rate integrity
- freeze-state authorization
- currency audit protection

# 3. SECURITY RULES

- active currency definition must be tamper-evident
- rate provenance must be attributable
- freeze/unfreeze requires explicit authorization
- ambiguous rate source must reject

