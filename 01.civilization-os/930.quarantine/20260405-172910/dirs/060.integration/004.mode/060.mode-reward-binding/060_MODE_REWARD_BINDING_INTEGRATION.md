# ============================================================
# MODE REWARD BINDING
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for mode reward bindings.

# 2. INTEGRATION SCOPE

- reward bindings to reward and runtime consumers
- reward references and rules to validation and payout consumers
- mode-reward-binding audit to operations

# 3. INTEGRATION RULES

- reward scope, references, and rules must be explicit before handoff
- blocked reward-binding state must preserve blocking reason
- hidden reward-binding mutation must not cross boundary
- ambiguous reward-binding state must fail closed

