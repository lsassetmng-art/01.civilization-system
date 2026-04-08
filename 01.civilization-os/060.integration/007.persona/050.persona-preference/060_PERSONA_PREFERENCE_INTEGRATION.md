# ============================================================
# PERSONA PREFERENCE
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for persona preference structures.

# 2. INTEGRATION SCOPE

- preference profile to recommendation and activity consumers
- preference items and priorities to scheduling and behavior consumers
- preference audit to operations

# 3. INTEGRATION RULES

- preference scope, item set, and priority set must be explicit before handoff
- preference handoff must preserve persona identity and profile version
- hidden preference mutation must not cross boundary
- ambiguous preference publication state must fail closed

