# ============================================================
# REWARD GRANT
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 010.reward
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for reward grants.

# 2. INTEGRATION SCOPE

- grant request to approval validation
- approved grant to balance/receiver systems
- grant audit to operations

# 3. INTEGRATION RULES

- grant source and target must be explicit before handoff
- applied grant state must preserve approval provenance
- unauthorized grant must not cross boundary
- ambiguous grant status must fail closed

