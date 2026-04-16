# ============================================================
# ORDER FLOW TEST DATA AND SEED EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero
review_required:
- Sato

purpose:
Defines exact seed/test-data strategy for OrderFlow.

seed_strategy:
  principles:
    - seed data is separate from structural migration
    - seed data is for local/dev/test use first
    - no production assumption
    - company-scoped sample data only
    - multilingual and multicurrency examples must be included

  recommended_seed_sets:
    - seed_company_context
    - seed_order_from_estimate_case
    - seed_standalone_order_case
    - seed_partial_shipment_case
    - seed_partial_delivery_case
    - seed_overdue_and_notification_case
    - seed_sync_failed_case

seed_case_definitions:

  seed_company_context:
    includes:
      - one test company
      - sample actor refs
      - role examples for sales_operator, order_coordinator, warehouse_operator, delivery_confirmation_operator, order_manager

  seed_order_from_estimate_case:
    includes:
      - one estimate-origin order
      - source estimate link
      - customer snapshot
      - multiple order lines
      - order_state around customer_proposed

  seed_standalone_order_case:
    includes:
      - one standalone order
      - customer snapshot without estimate link
      - multicurrency example such as USD

  seed_partial_shipment_case:
    includes:
      - shipment request
      - shipment request lines
      - accepted request result
      - partial shipment execution
      - remaining quantity still open

  seed_partial_delivery_case:
    includes:
      - delivery confirmation record
      - delivery confirmation lines
      - partially_delivered visibility
      - closure still blocked

  seed_overdue_and_notification_case:
    includes:
      - customer_proposed state with overdue followup
      - proposal_overdue notification
      - shipment_overdue notification example

  seed_sync_failed_case:
    includes:
      - order_sync_state failed
      - order_pending_operation queued
      - notification_event_record sync_failed

seed_rules:
  - every seed order should have reconstructable history
  - at least one JPY case and one USD case should exist
  - one ja-JP locale snapshot and one en-US locale snapshot should exist
  - one closed order and one canceled order should exist for list/filter testing

