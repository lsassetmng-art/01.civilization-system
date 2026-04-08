# ============================================================
# CAREER PROGRESSION
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for career progression structures.

# 2. INTEGRATION SCOPE

- progression records and states to persona and business consumers
- progression events and results to evaluation and recommendation systems
- progression audit to operations

# 3. INTEGRATION RULES

- subject scope, progression scope, and state transition must be explicit before handoff
- result handoff must preserve progression-record identity
- hidden progression mutation must not cross boundary
- ambiguous progression state must fail closed

