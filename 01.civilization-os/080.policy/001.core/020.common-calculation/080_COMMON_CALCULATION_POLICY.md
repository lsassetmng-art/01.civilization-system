# ============================================================
# COMMON CALCULATION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for shared calculation behavior.

# 2. POLICY RULES

- every shared calculation must reference one explicit formula version
- parameter source scope must be declared
- deterministic output is mandatory for identical context
- partial or ambiguous result publication is prohibited

# 3. FAILURE RULE

- missing version must reject
- invalid parameter provenance must reject
- non-deterministic execution must reject

