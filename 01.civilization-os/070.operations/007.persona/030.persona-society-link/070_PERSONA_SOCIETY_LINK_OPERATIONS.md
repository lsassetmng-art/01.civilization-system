# ============================================================
# PERSONA SOCIETY LINK
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for persona society links.

# 2. OPERATIONAL CONTROLS

- role-assignment review
- affiliation review
- participation review
- society-link audit inspection

# 3. FAILURE OPERATIONS

- missing target scope -> reject
- contradictory role assignment -> block
- ambiguous affiliation state -> fail closed

