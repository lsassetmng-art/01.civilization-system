# ============================================================
# SYSTEM
# POLICY
# ============================================================

status: draft
layer: policy
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for system-level control.

# 2. POLICY RULES

- reverse dependency is prohibited
- undeclared cross-boundary mutation is prohibited
- write-capable dependency must be explicit
- system startup must fail closed when consistency cannot be proven

# 3. FAILURE RULE

- undeclared write path must reject
- reverse dependency must reject
- startup ambiguity must reject

