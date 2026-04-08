# ============================================================
# UNIT DEPLOYMENT
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for unit deployment structures.

# 2. INTEGRATION SCOPE

- deployments to front and operation consumers
- unit references and deployment rules to runtime and command consumers
- unit-deployment audit to operations

# 3. INTEGRATION RULES

- deployment scope, unit references, and rules must be explicit before handoff
- blocked deployment state must preserve blocking reason
- hidden unit-deployment mutation must not cross boundary
- ambiguous deployment state must fail closed

