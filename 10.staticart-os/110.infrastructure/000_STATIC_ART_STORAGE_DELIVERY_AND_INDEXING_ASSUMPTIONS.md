# ============================================================
# STATIC ART STORAGE DELIVERY AND INDEXING ASSUMPTIONS
# ============================================================

status: implementation-ready-infrastructure
layer: infrastructure
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Storage Assumptions

Asset storage must distinguish:
- canonical full asset files
- preview assets
- sample assets
- derived thumbnails

## 2. Delivery Assumptions

Delivery paths must distinguish:
- sample delivery
- full entitled delivery
- projection thumbnail delivery

Full delivery must always depend on entitlement resolution.

## 3. Indexing Assumptions

Derived indexes must support:
- marketplace tab listing
- filter search
- sort ranking
- creator and publisher browse
- library visibility projection
- continue reading projection
- continue viewing projection
- exhibition projection lookup

## 4. Refresh Assumptions

Refresh must occur after:
- publish state change
- rights change
- subscription eligibility change
- entitlement change
- progress change
- restriction or delist change
