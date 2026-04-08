# ============================================================
# SCHOOL SYSTEM
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for school system structures.

# 2. RUNTIME STATE

- active school-definition state
- school-term resolution state
- enrollment-state progression
- operation-status publication state

# 3. EXECUTION RULES

- school scope and active term must resolve before enrollment handling
- enrollment mutation must preserve student and school identity
- operation status must be explicit before publication
- hidden enrollment mutation is prohibited

# 4. FAILURE HANDLING

- missing school scope -> reject
- invalid term binding -> reject
- hidden enrollment mutation -> fail closed

