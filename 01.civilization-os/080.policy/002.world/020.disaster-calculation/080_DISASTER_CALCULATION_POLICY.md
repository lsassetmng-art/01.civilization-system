# ============================================================
# DISASTER CALCULATION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for disaster calculation.

# 2. POLICY RULES

- disaster profile must be explicit
- risk scope must bind one region and one disaster type
- occurrence requires explicit threshold satisfaction
- severity source must be attributable

# 3. FAILURE RULE

- missing profile must reject
- invalid risk scope must reject
- ambiguous severity source must reject

