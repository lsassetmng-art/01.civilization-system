# ============================================================
# SKILL GROWTH
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime execution for persona skill growth.

# 2. RUNTIME STATE

- active skill profile
- growth source resolution state
- growth-event calculation state
- skill-state publication state

# 3. EXECUTION RULES

- active skill profile must resolve before growth publication
- growth source scope must be explicit
- growth result must persist before skill-state publication
- hidden skill mutation without event is prohibited

# 4. FAILURE HANDLING

- missing skill profile -> reject
- ambiguous growth source -> reject
- hidden skill mutation -> fail closed

