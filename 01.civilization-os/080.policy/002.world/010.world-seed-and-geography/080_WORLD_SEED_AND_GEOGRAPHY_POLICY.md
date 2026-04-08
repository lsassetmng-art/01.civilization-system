# ============================================================
# WORLD SEED AND GEOGRAPHY
# POLICY
# ============================================================

status: draft
layer: policy
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for world seed and geography.

# 2. POLICY RULES

- geography generation requires explicit seed version
- continent and zone lineage must be preserved
- feature attachment requires validated terrain binding
- implicit regeneration is prohibited

# 3. FAILURE RULE

- missing seed version must reject
- invalid hierarchy must reject
- ambiguous terrain/feature binding must reject

