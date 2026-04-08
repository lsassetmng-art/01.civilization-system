# ============================================================
# AUTHORIZATION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for authorization handling.

# 2. TRIGGER

- authorization policy create/update
- subject update
- authorization rule update
- block/unblock request

# 3. MAIN FLOW

1. create or resolve authorization_policy
2. bind authorization_subject set
3. bind authorization_rule set
4. validate authorization scope, subject scope, and rule consistency
5. persist authorization_status
6. emit audit trace

# 4. FAILURE FLOW

- missing authorization or subject scope -> reject
- invalid subject or rule binding -> reject
- hidden authorization mutation -> fail closed

# 5. OUTPUT

- authorization state
- subject/rule/status
- audit record

