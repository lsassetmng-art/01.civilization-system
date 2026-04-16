# ============================================================
# ORDER FLOW SEED READY NOTE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Summarizes the seed SQL readiness level.

seed_readiness:
  packet_status:
    - drafted

  covers:
    - estimate-origin order
    - standalone order
    - customer snapshots
    - inventory and lead time
    - delivery candidates
    - proposal and acceptance
    - partial shipment
    - partial delivery
    - history
    - notifications
    - sync failed visibility

  still_needed_before_shared_use:
    - Sato review
    - target schema confirmation
    - insert order check against final ddl naming
    - optional cleanup/reset strategy

summary:
  - local/dev/test seed direction is now fixed
  - shared execution remains review-gated

