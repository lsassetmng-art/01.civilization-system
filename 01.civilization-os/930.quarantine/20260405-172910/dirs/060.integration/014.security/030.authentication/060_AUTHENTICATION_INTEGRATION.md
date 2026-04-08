# ============================================================
# AUTHENTICATION
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for authentication structures.

# 2. INTEGRATION SCOPE

- authentication profiles to session and access consumers
- factors and sessions to verification consumers
- authentication audit to operations

# 3. INTEGRATION RULES

- auth scope, factor set, and session state must be explicit before handoff
- blocked authentication state must preserve blocking reason
- hidden authentication mutation must not cross boundary
- ambiguous authentication state must fail closed

