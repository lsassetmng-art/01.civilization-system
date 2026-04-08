# ============================================================
# WAR OPERATION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for war operation handling.

# 2. TRIGGER

- operation creation/update
- operation phase update
- objective update
- operation close/open request

# 3. MAIN FLOW

1. create or resolve war_operation
2. bind operation_phase set
3. bind operation_objective set
4. validate operation scope and deterministic phase order
5. persist operation_status
6. emit audit trace

# 4. FAILURE FLOW

- missing operation scope -> reject
- invalid phase or objective binding -> reject
- hidden war-operation mutation -> fail closed

# 5. OUTPUT

- operation state
- phase/objective state
- audit record

