# ============================================================
# HIRING
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for hiring structures.

# 2. INTEGRATION SCOPE

- hiring cases and candidates to interview and approval consumers
- hiring decisions and records to employment and society consumers
- hiring audit to operations

# 3. INTEGRATION RULES

- employer scope, candidate scope, and decision state must be explicit before handoff
- hiring record handoff must preserve hiring-case identity
- hidden hiring mutation must not cross boundary
- ambiguous hiring decision state must fail closed

