# ============================================================
# WAR FRONT
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for war front structures.

# 2. INTEGRATION SCOPE

- war fronts to deployment and operation consumers
- line segments and front conditions to runtime and control consumers
- war-front audit to operations

# 3. INTEGRATION RULES

- front scope, segments, and conditions must be explicit before handoff
- closed front handoff must preserve front identity and line state
- hidden war-front mutation must not cross boundary
- ambiguous war-front state must fail closed

