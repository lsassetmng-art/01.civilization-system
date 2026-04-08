# ============================================================
# SKILL GROWTH
# FLOW
# ============================================================

status: draft
layer: flow
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for persona skill growth.

# 2. TRIGGER

- education/career/training result
- explicit skill-growth request
- scheduled growth review

# 3. MAIN FLOW

1. resolve active skill_profile
2. resolve growth source scope
3. create skill_growth_event
4. calculate skill_growth_result
5. update skill_state
6. emit audit trace

# 4. FAILURE FLOW

- missing active skill profile -> reject
- ambiguous growth source -> reject
- hidden skill mutation without growth event -> fail closed

# 5. OUTPUT

- growth event
- growth result
- updated skill state

