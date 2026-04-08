# ============================================================
# WORLD SEED AND GEOGRAPHY
# SECURITY
# ============================================================

status: draft
layer: security
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for seed and geography.

# 2. SECURITY SCOPE

- seed version integrity
- geography generation authorization
- feature publication integrity
- geography audit protection

# 3. SECURITY RULES

- seed version must be attributable and tamper-evident
- privileged regeneration requires explicit authorization
- geography publication must preserve lineage integrity
- ambiguous seed source must reject

