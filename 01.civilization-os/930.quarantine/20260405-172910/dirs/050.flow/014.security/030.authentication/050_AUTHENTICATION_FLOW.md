# ============================================================
# AUTHENTICATION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for authentication handling.

# 2. TRIGGER

- authentication profile create/update
- factor update
- authentication session start/update
- block/unblock request

# 3. MAIN FLOW

1. create or resolve authentication_profile
2. bind authentication_factor set
3. create or update authentication_session
4. validate auth scope, factors, and session consistency
5. persist authentication_status
6. emit audit trace

# 4. FAILURE FLOW

- missing auth scope -> reject
- invalid factor or session binding -> reject
- hidden authentication mutation -> fail closed

# 5. OUTPUT

- authentication state
- factor/session/status
- audit record

