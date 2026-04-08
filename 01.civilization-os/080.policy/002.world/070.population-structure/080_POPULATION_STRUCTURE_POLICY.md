# ============================================================
# POPULATION STRUCTURE
# POLICY
# ============================================================

status: draft
layer: policy
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for population structure.

# 2. POLICY RULES

- distribution must preserve one measurement point
- migration must preserve explicit source and target region
- demographic publication requires validated distribution
- ambiguous migration routing is prohibited

# 3. FAILURE RULE

- missing classification must reject
- inconsistent migration routing must reject
- ambiguous measurement point must reject

