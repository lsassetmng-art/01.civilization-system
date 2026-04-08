# ============================================================
# PERSONA BEHAVIOR BINDING
# POLICY
# ============================================================

status: draft
layer: policy
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for persona behavior binding.

# 2. POLICY RULES

- one active behavior profile per behavior family
- behavior context must be explicit before binding
- rule activation requires explicit profile version
- conflicting active bindings are prohibited

# 3. FAILURE RULE

- missing active profile must reject
- invalid context binding must reject
- conflicting active binding must reject

