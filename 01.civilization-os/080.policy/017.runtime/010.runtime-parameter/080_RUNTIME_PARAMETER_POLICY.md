# ============================================================
# RUNTIME PARAMETER
# POLICY
# ============================================================

status: draft
layer: policy
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for runtime parameters.

# 2. POLICY RULES

- runtime scope and version must be explicit
- one active parameter set per runtime scope is required
- frozen parameter sets must not be mutated or activated
- implicit parameter override is prohibited

# 3. FAILURE RULE

- missing runtime scope must reject
- incompatible parameter contents must reject
- ambiguous active parameter set must reject

