# ============================================================
# POLITICAL SYSTEM
# POLICY
# ============================================================

status: draft
layer: policy
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for political system law.

# 2. POLICY RULES

- jurisdiction scope, office structure, and power-source rules must be explicit
- one active political system per jurisdiction decision point is required
- ambiguous active political system is prohibited
- implicit power-source mutation is prohibited

# 3. FAILURE RULE

- missing jurisdiction scope must reject
- invalid office or power-source binding must reject
- ambiguous active political system must reject

