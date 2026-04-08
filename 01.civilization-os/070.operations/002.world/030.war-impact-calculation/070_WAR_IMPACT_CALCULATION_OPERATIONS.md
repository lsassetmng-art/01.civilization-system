# ============================================================
# WAR IMPACT CALCULATION
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for war impact calculation.

# 2. OPERATIONAL CONTROLS

- active war review
- impact publication monitoring
- recovery state review
- cross-domain effect inspection

# 3. FAILURE OPERATIONS

- missing war state -> reject
- inconsistent target scope -> block
- invalid recovery binding -> fail closed

