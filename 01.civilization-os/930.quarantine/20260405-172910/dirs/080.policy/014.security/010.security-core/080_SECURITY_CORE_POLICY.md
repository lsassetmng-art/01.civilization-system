# ============================================================
# SECURITY CORE
# POLICY
# ============================================================

status: draft
layer: policy
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for security core structures.

# 2. POLICY RULES

- security scope, scope binding, and version must be explicit
- active and suspended security state must be explicit
- hidden security-core mutation is prohibited
- implicit security activation without resolved scope/version is prohibited

# 3. FAILURE RULE

- missing security scope must reject
- invalid binding or version state must reject
- hidden security-core mutation must reject

