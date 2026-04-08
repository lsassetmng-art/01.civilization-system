# ============================================================
# SETTLEMENT
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for settlement.

# 2. RUNTIME STATE

- active settlement batch state
- item inclusion state
- result publication state
- reconciliation state

# 3. EXECUTION RULES

- one item belongs to one active batch scope
- result publication must follow persisted item state
- reconciliation must run after batch result completion
- silent discrepancy is prohibited

# 4. FAILURE HANDLING

- missing batch scope -> reject
- invalid item membership -> reject
- silent discrepancy -> fail closed

