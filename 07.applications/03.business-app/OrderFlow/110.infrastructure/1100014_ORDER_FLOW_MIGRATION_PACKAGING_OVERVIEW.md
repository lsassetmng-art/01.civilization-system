# ============================================================
# ORDER FLOW MIGRATION PACKAGING OVERVIEW
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero
review_required:
- Sato

purpose:
Defines how OrderFlow database changes should be packaged into migrations.

packaging_principles:
  - additive only
  - review first
  - small bounded migration units
  - core tables before dependent tables
  - indexes packaged with owning table when practical
  - RLS after base tables exist
  - no destructive statements in initial pack

recommended_packaging_order:
  1:
    - order core tables
  2:
    - execution and scheduling tables
  3:
    - proposal, shipment, and delivery tables
  4:
    - history, notification, pending operation, sync tables
  5:
    - RLS and policy layer
  6:
    - optional seeds / test fixtures handled separately

important_notes:
  - migration packaging is still review-stage
  - exact schema prefix and migration numbering are intentionally deferred
  - no go-execution is implied by this document

