# ============================================================
# THREAT RESPONSE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for threat response handling.

# 2. TRIGGER

- threat response policy create/update
- threat signal update
- response rule update
- block/unblock request

# 3. MAIN FLOW

1. create or resolve threat_response_policy
2. bind threat_signal set
3. bind response_action_rule set
4. validate response scope, signal, and action consistency
5. persist threat_response_status
6. emit audit trace

# 4. FAILURE FLOW

- missing response scope -> reject
- invalid signal or action binding -> reject
- hidden threat-response mutation -> fail closed

# 5. OUTPUT

- threat-response state
- signal/rule/status
- audit record

