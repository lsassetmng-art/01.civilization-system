# ============================================================
# PERSONA PROFILE
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for persona profile structures.

# 2. INTEGRATION SCOPE

- persona profile to presentation and marketplace consumers
- profile attributes to recommendation and relationship consumers
- profile publication state to visibility consumers
- persona-profile audit to operations

# 3. INTEGRATION RULES

- profile scope, attribute set, and publication scope must be explicit before handoff
- publication handoff must preserve profile identity and version
- hidden profile mutation must not cross boundary
- ambiguous profile publication state must fail closed

