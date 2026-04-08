# ============================================================
# COMMERCE BOUNDARY
# POLICY
# ============================================================

status: draft
layer: policy
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for persona commerce boundaries.

# 2. POLICY RULES

- sale requires explicit commerce permission
- sale unit must preserve market scope
- restriction state must apply before marketplace publication
- settlement identity must remain attributable

# 3. FAILURE RULE

- missing commerce permission must reject
- invalid market scope must reject
- restricted sale publication must reject

