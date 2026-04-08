# ============================================================
# EDUCATION FACILITY OPERATION
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for education facility operations.

# 2. INTEGRATION SCOPE

- facility state to school and scheduling consumers
- capacity and operation state to enrollment/runtime consumers
- facility audit to operations

# 3. INTEGRATION RULES

- facility scope, rule set, and capacity state must be explicit before handoff
- maintenance and operation state must preserve facility identity
- hidden facility-status mutation must not cross boundary
- ambiguous capacity or operation state must fail closed

