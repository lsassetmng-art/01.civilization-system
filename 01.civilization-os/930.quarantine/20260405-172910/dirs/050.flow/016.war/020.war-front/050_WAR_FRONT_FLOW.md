# ============================================================
# WAR FRONT
# FLOW
# ============================================================

status: draft
layer: flow
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for war front handling.

# 2. TRIGGER

- front creation/update
- line segment update
- front condition update
- front close/open request

# 3. MAIN FLOW

1. create or resolve war_front
2. bind front_line_segment set
3. bind front_condition set
4. validate front scope and deterministic segment order
5. persist front_status
6. emit audit trace

# 4. FAILURE FLOW

- missing front scope -> reject
- invalid segment or condition binding -> reject
- hidden war-front mutation -> fail closed

# 5. OUTPUT

- war front state
- segment/condition state
- audit record

