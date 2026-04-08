# ============================================================
# CURRENCY
# POLICY
# ============================================================

status: draft
layer: policy
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for economy currencies.

# 2. POLICY RULES

- currency code and issuer scope must be explicit
- one effective rate pair per decision point is required
- frozen currency must not be usable
- implicit currency conversion is prohibited

# 3. FAILURE RULE

- duplicate active currency code must reject
- ambiguous rate resolution must reject
- frozen currency use must reject

