# ============================================================
# WAR CORE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for war core handling.

# 2. TRIGGER

- war declaration/update request
- party update
- scope-rule update
- status change request

# 3. MAIN FLOW

1. create or resolve war_definition
2. bind war_party_binding set
3. bind war_scope_rule set
4. validate war scope and party consistency
5. persist war_status
6. emit audit trace

# 4. FAILURE FLOW

- missing war scope -> reject
- invalid party or rule binding -> reject
- hidden war-core mutation -> fail closed

# 5. OUTPUT

- war core state
- party/rule state
- audit record

