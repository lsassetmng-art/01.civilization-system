# ============================================================
# INFRASTRUCTURE PLACEMENT
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for infrastructure placement.

# 2. OPERATIONAL CONTROLS

- placement review
- coordinate validation review
- violation monitoring
- publication audit

# 3. FAILURE OPERATIONS

- missing rule -> reject
- invalid coordinate scope -> block
- region mismatch -> fail closed

