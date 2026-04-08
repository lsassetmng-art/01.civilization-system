# ============================================================
# NATION DETAIL SET
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for nation detail sets.

# 2. OPERATIONAL CONTROLS

- profile review
- bundle completeness review
- publication-state inspection
- detail audit inspection

# 3. FAILURE OPERATIONS

- missing required bundle -> reject
- invalid nation binding -> block
- ambiguous completeness/publication state -> fail closed

