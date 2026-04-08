# ============================================================
# PROVENANCE
# POLICY
# ============================================================

status: draft
layer: policy
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for provenance structures.

# 2. POLICY RULES

- provenance scope, actor references, and rules must be explicit
- active and blocked provenance state must be explicit
- hidden provenance mutation is prohibited
- implicit provenance execution while blocked is prohibited

# 3. FAILURE RULE

- missing provenance scope must reject
- invalid actor or rule binding must reject
- hidden provenance mutation must reject

