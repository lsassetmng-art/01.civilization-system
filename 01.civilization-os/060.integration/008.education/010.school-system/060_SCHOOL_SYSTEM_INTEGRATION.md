# ============================================================
# SCHOOL SYSTEM
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for school system structures.

# 2. INTEGRATION SCOPE

- school definitions and terms to runtime/attendance consumers
- enrollment state to education, persona, and facility consumers
- school audit to operations

# 3. INTEGRATION RULES

- school scope, active term, and enrollment identity must be explicit before handoff
- enrollment handoff must preserve school and student identity
- hidden enrollment mutation must not cross boundary
- ambiguous school or enrollment state must fail closed

