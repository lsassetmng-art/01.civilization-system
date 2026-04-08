# ============================================================
# STORY CORE
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for story core structures.

# 2. INTEGRATION SCOPE

- story definition to arc/scene/progression consumers
- scope bindings and versions to runtime/publication consumers
- story-core audit to operations

# 3. INTEGRATION RULES

- story scope, binding, and version must be explicit before handoff
- active story handoff must preserve story identity and version
- hidden story-core mutation must not cross boundary
- ambiguous story-core state must fail closed

