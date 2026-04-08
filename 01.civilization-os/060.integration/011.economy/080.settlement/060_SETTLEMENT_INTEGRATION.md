# ============================================================
# SETTLEMENT
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for settlements.

# 2. INTEGRATION SCOPE

- payment/trade outputs to settlement batch
- settlement results to revenue/accounting consumers
- reconciliation state to review systems
- settlement audit to operations

# 3. INTEGRATION RULES

- settlement item must preserve source transaction identity
- result and reconciliation handoff must preserve batch identity
- silent discrepancy must not cross boundary
- ambiguous batch membership must fail closed

