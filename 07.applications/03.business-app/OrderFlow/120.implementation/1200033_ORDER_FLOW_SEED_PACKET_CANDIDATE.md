# ============================================================
# ORDER FLOW SEED PACKET CANDIDATE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines candidate seed packet files for OrderFlow local/dev/test usage.

seed_packet_candidates:
  - candidate_file_name: seed_0001_order_flow_company_and_roles.sql
    contains:
      - company context
      - actor refs
      - sample role context

  - candidate_file_name: seed_0002_order_flow_orders.sql
    contains:
      - estimate-origin order
      - standalone order
      - customer snapshots
      - line items

  - candidate_file_name: seed_0003_order_flow_execution.sql
    contains:
      - inventory checks
      - lead time
      - delivery candidates
      - proposals and responses

  - candidate_file_name: seed_0004_order_flow_shipment_delivery.sql
    contains:
      - shipment request
      - shipment result
      - shipment execution
      - delivery confirmation
      - partial cases

  - candidate_file_name: seed_0005_order_flow_notification_sync.sql
    contains:
      - history
      - notification events
      - sync failed cases
      - pending operation cases

notes:
  - seed files are candidate only
  - exact insert sql is intentionally deferred
