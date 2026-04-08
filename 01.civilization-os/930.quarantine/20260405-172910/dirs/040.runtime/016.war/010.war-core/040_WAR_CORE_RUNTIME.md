# ============================================================
# WAR CORE
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for war core structures.

# 2. RUNTIME STATE

- active war-definition state
- party-binding resolution state
- scope-rule resolution state
- active/suspended war state

# 3. EXECUTION RULES

- war scope, party bindings, and scope rules must resolve before publication
- one active war state must be explicit per war context
- active and suspended states must be explicit
- hidden war-core mutation is prohibited

# 4. FAILURE HANDLING

- missing war scope -> reject
- invalid party or rule binding -> reject
- hidden war-core mutation -> fail closed

