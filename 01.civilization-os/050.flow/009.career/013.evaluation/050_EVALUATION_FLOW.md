# ============================================================
# EVALUATION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for career evaluation handling.

# 2. TRIGGER

- evaluation definition update
- evaluation session creation
- evaluation result publication

# 3. MAIN FLOW

1. create or resolve evaluation_definition
2. create or resolve evaluation_session
3. bind evaluation_metric set
4. validate subject scope and evaluation conditions
5. persist evaluation_result
6. emit audit trace

# 4. FAILURE FLOW

- missing evaluation or subject scope -> reject
- invalid metric binding -> reject
- hidden evaluation-result mutation -> fail closed

# 5. OUTPUT

- evaluation state
- metric/result state
- audit record

