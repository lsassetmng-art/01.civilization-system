# ============================================================
# MILITARY SERVICE AND MOBILIZATION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for military service and mobilization.

# 2. TRIGGER

- service obligation review
- mobilization order issue/update
- mobilization execution review

# 3. MAIN FLOW

1. resolve military_service_rule
2. resolve or update service_obligation_state
3. create or resolve mobilization_order
4. validate mobilization scope and obligation applicability
5. persist mobilization_status
6. emit audit trace

# 4. FAILURE FLOW

- missing order scope -> reject
- invalid obligation binding -> reject
- hidden mobilization without order -> fail closed

# 5. OUTPUT

- obligation state
- mobilization order/status
- audit record

