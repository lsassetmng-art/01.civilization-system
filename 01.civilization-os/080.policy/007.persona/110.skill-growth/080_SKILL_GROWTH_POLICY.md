# ============================================================
# SKILL GROWTH
# POLICY
# ============================================================

status: draft
layer: policy
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for persona skill growth.

# 2. POLICY RULES

- growth source scope must be explicit
- skill growth requires explicit growth event
- skill-state publication must preserve profile identity
- hidden skill mutation is prohibited

# 3. FAILURE RULE

- missing skill profile must reject
- ambiguous growth source must reject
- hidden skill mutation must reject

