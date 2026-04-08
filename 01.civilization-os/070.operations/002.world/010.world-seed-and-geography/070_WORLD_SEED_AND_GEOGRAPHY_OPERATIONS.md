# ============================================================
# WORLD SEED AND GEOGRAPHY
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for seed and geography control.

# 2. OPERATIONAL CONTROLS

- active seed version review
- geography build review
- zone/feature consistency inspection
- regeneration review

# 3. FAILURE OPERATIONS

- missing seed version -> reject build
- invalid hierarchy -> block publication
- ambiguous feature binding -> fail closed

