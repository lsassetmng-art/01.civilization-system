# ============================================================
# TAX
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for taxation.

# 2. INTEGRATION SCOPE

- taxable event to assessment systems
- assessments to payment systems
- payment state to settlement/revenue consumers
- tax audit to operations

# 3. INTEGRATION RULES

- jurisdiction scope must be explicit before assessment handoff
- payment state must preserve assessment identity
- unscoped taxation must not cross boundary
- ambiguous assessment/payment relationship must fail closed

