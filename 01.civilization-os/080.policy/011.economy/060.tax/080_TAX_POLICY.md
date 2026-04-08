# ============================================================
# TAX
# POLICY
# ============================================================

status: draft
layer: policy
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for taxation.

# 2. POLICY RULES

- jurisdiction scope must be explicit
- assessment must preserve tax-rule identity
- unscoped taxation is prohibited
- payment state must remain attributable to one assessment

# 3. FAILURE RULE

- missing jurisdiction rule must reject
- invalid tax base must reject
- unscoped taxation attempt must reject

