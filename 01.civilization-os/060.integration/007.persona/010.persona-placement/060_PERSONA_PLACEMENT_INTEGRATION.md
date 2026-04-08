# ============================================================
# PERSONA PLACEMENT
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for persona placement.

# 2. INTEGRATION SCOPE

- placement request to scope validator
- validated placement to world/society consumers
- placement conflict state to operations
- placement audit to review paths

# 3. INTEGRATION RULES

- placement scope must be explicit before handoff
- validated placement must preserve target scope identity
- incompatible placement must not cross boundary
- conflict evidence must persist before rejection handoff

