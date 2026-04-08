# ============================================================
# TAX
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for taxation.

# 2. RUNTIME STATE

- active tax-rule resolution state
- tax-base calculation state
- assessment publication state
- payment-state application state

# 3. EXECUTION RULES

- one jurisdiction rule must resolve before assessment
- assessment must persist before payment application
- payment state must remain attributable to one assessment
- unscoped taxation is prohibited

# 4. FAILURE HANDLING

- missing jurisdiction rule -> reject
- invalid tax base -> reject
- unscoped taxation attempt -> fail closed

