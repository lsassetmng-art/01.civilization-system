# ============================================================
# STATE MACHINE
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for state machine execution.

# 2. INTEGRATION SCOPE

- transition request to runtime validator
- validated edge to state persistence
- transition result to audit and observable output

# 3. INTEGRATION RULES

- transition request must include authority context
- runtime validator must return explicit edge resolution result
- persistence boundary must preserve from and to state
- rejected transition must preserve rejection reason

