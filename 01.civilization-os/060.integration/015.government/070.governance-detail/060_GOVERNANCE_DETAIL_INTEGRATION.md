# ============================================================
# GOVERNANCE DETAIL
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for governance details.

# 2. INTEGRATION SCOPE

- governance policy to runtime and decision consumers
- decision channels and approval matrix to execution systems
- governance action state to audit/review consumers
- governance audit to operations

# 3. INTEGRATION RULES

- required channel and matrix must be explicit before action handoff
- invalid action transition must not cross boundary
- governance handoff must preserve government identity and version
- hidden governance mutation must fail closed

