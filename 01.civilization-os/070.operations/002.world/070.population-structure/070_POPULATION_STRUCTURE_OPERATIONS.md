# ============================================================
# POPULATION STRUCTURE
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for population structure control.

# 2. OPERATIONAL CONTROLS

- distribution review
- demographic-state review
- migration review
- publication audit

# 3. FAILURE OPERATIONS

- missing classification -> reject
- inconsistent migration routing -> block
- ambiguous measurement point -> fail closed

