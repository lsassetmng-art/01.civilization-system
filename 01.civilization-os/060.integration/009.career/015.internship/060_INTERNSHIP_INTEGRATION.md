# ============================================================
# INTERNSHIP
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for internship structures.

# 2. INTEGRATION SCOPE

- internship programs and slots to education and hiring consumers
- participation and outcomes to skill-growth and career consumers
- internship audit to operations

# 3. INTEGRATION RULES

- host scope, participant scope, and slot identity must be explicit before handoff
- outcome handoff must preserve participation and program identity
- hidden internship-outcome mutation must not cross boundary
- ambiguous internship state must fail closed

