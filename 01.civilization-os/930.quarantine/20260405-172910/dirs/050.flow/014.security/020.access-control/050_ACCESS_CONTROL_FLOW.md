# ============================================================
# ACCESS CONTROL
# FLOW
# ============================================================

status: draft
layer: flow
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for access control handling.

# 2. TRIGGER

- access policy create/update
- subject update
- permission rule update
- block/unblock request

# 3. MAIN FLOW

1. create or resolve access_control_policy
2. bind access_subject set
3. bind access_permission_rule set
4. validate access scope, subject scope, and permission consistency
5. persist access_control_status
6. emit audit trace

# 4. FAILURE FLOW

- missing access or subject scope -> reject
- invalid subject or permission binding -> reject
- hidden access-control mutation -> fail closed

# 5. OUTPUT

- access-control state
- subject/rule/status
- audit record

