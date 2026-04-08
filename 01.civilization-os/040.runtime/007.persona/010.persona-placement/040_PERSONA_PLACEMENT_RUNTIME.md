# ============================================================
# PERSONA PLACEMENT
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime execution for persona placement.

# 2. RUNTIME STATE

- active placement context
- target scope validation state
- placement conflict state
- placement publication state

# 3. EXECUTION RULES

- placement scope must be explicit before publication
- incompatible active placements must be rejected before update
- placement constraint evaluation must complete before persistence
- ambiguous placement window is prohibited

# 4. FAILURE HANDLING

- missing target scope -> reject
- conflicting active placement -> reject
- invalid constraint binding -> fail closed

