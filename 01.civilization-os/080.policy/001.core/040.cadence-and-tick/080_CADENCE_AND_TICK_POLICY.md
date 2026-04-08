# ============================================================
# CADENCE AND TICK
# POLICY
# ============================================================

status: draft
layer: policy
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for cadence and tick control.

# 2. POLICY RULES

- cadence profile must be explicit
- speed family changes require declared authority
- catchup mode must preserve simulation truth
- incompatible execution windows must not overlap

# 3. FAILURE RULE

- unauthorized speed control must reject
- unsafe catchup must reject
- ambiguous cadence selection must reject

