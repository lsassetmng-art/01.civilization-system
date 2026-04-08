# ============================================================
# TAX
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for taxation.

# 2. INFRASTRUCTURE SCOPE

- jurisdiction-rule storage
- tax-base/assessment persistence
- payment-state storage
- tax audit sink

# 3. INFRASTRUCTURE RULES

- jurisdiction rule must be durably resolvable
- assessment must persist before payment application
- payment state must preserve assessment identity
- infrastructure ambiguity must fail closed

