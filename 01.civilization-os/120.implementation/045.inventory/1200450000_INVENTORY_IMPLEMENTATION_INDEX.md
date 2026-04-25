# ============================================================
# INVENTORY IMPLEMENTATION INDEX
# ============================================================

status: canonical
layer: implementation
domain: inventory
system: civilization-os
owner: Boss
prepared_by: Zero

files:
- 1200450001_INVENTORY_CORE_IMPLEMENTATION.md
- 1200450002_INVENTORY_ENTITY_IMPLEMENTATION.md
- 1200450003_INVENTORY_ROLE_IMPLEMENTATION.md
- 1200450004_INVENTORY_ACTIVITY_IMPLEMENTATION.md
- 1200450005_INVENTORY_BOUNDARY_IMPLEMENTATION.md
- 1200450006_INVENTORY_VALIDATION_IMPLEMENTATION.md
- 1200450007_INVENTORY_FAILURE_IMPLEMENTATION.md

## Exact Inventory Storage Reservation Split
## Exact Inventory Storage Reservation Split

Inventory implementation must explicitly distinguish:

- storage
- slot allocation
- reservation
- transfer
- consumption
- adjustment

Storage and reservation must not collapse into one state.

## Exact Inventory And Ownership Boundary

Inventory posture is not identical to asset ownership posture.
A thing may be owned without being stored in the same place,
and may be reserved without being consumed.
