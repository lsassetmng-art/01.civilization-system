# ============================================================
# OCCUPATION SYSTEM
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for occupation system structures.

# 2. INTEGRATION SCOPE

- occupation definitions to job and career-path consumers
- occupation families and rules to recommendation and governance consumers
- occupation audit to operations

# 3. INTEGRATION RULES

- occupation scope, family identity, and rule set must be explicit before handoff
- active occupation handoff must preserve version and revised state
- hidden occupation mutation must not cross boundary
- ambiguous occupation state must fail closed

