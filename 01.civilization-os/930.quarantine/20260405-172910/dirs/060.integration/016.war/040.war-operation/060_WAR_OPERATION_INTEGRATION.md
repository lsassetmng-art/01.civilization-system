# ============================================================
# WAR OPERATION
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for war operation structures.

# 2. INTEGRATION SCOPE

- operations to front and logistics consumers
- phases and objectives to execution and decision consumers
- war-operation audit to operations

# 3. INTEGRATION RULES

- operation scope, phases, and objectives must be explicit before handoff
- closed operation handoff must preserve operation identity and objective state
- hidden war-operation mutation must not cross boundary
- ambiguous war-operation state must fail closed

