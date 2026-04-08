# ============================================================
# ZONE AND TERRITORY STRUCTURE
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for zone and territory structures.

# 2. OPERATIONAL CONTROLS

- territory hierarchy review
- zone-rule review
- boundary/dispute review
- territory audit inspection

# 3. FAILURE OPERATIONS

- invalid hierarchy -> reject
- missing boundary identity -> block
- unresolved territorial ambiguity -> fail closed

