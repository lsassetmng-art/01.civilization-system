# ============================================================
# CITY BUILDER
# POLICY
# ============================================================

status: draft
layer: policy
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for city builder systems.

# 2. POLICY RULES

- city publication requires explicit validation
- nation scope and zoning bundle must be explicit
- one active builder session per city and builder scope
- implicit city publication is prohibited

# 3. FAILURE RULE

- missing nation scope must reject
- invalid zoning bundle must reject
- ambiguous builder session must reject

