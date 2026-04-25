# ============================================================
# ITEM IMPLEMENTATION INDEX
# ============================================================

status: canonical
layer: implementation
domain: item
system: civilization-os
owner: Boss
prepared_by: Zero

files:
- 1200440001_ITEM_CORE_IMPLEMENTATION.md
- 1200440002_ITEM_ENTITY_IMPLEMENTATION.md
- 1200440003_ITEM_ROLE_IMPLEMENTATION.md
- 1200440004_ITEM_ACTIVITY_IMPLEMENTATION.md
- 1200440005_ITEM_BOUNDARY_IMPLEMENTATION.md
- 1200440006_ITEM_VALIDATION_IMPLEMENTATION.md
- 1200440007_ITEM_FAILURE_IMPLEMENTATION.md

## Exact Item Master Instance Split
## Exact Item Master Instance Split

Item implementation must explicitly distinguish:

- item master
- item variant
- item instance
- condition
- expiration

Master definition and instance state must not be represented as one truth.

## Exact Item And Asset Boundary

Item truth is not identical to asset ownership truth.
An item may be owned through asset posture,
but item definition and item instance remain separate.
