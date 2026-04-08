# ============================================================
# CAREER PATH
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for career path structures.

# 2. INTEGRATION SCOPE

- career-path definitions and steps to progression consumers
- path requirements to evaluation and recommendation systems
- career-path audit to operations

# 3. INTEGRATION RULES

- path scope, step order, and requirement set must be explicit before handoff
- active path handoff must preserve path identity and revised state
- hidden path mutation must not cross boundary
- ambiguous path state must fail closed

