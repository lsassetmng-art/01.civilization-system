# ============================================================
# WAR CORE
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for war core structures.

# 2. INTEGRATION SCOPE

- war definition to front/operation/logistics consumers
- party bindings and scope rules to runtime and governance consumers
- war-core audit to operations

# 3. INTEGRATION RULES

- war scope, party bindings, and scope rules must be explicit before handoff
- active war handoff must preserve war identity and party provenance
- hidden war-core mutation must not cross boundary
- ambiguous war-core state must fail closed

