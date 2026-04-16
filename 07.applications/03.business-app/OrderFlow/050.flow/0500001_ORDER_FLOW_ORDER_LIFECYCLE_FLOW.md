# ============================================================
# ORDER FLOW ORDER LIFECYCLE FLOW
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the normal end-to-end lifecycle flow of an order in OrderFlow.

# ============================================================
# 1. lifecycle overview
# ============================================================

normal_flow:
  1. create order
  2. confirm order
  3. perform inventory check
  4. calculate lead time
  5. calculate delivery candidates
  6. record customer proposal
  7. record customer agreement
  8. issue shipment request
  9. record shipment execution
  10. record delivery confirmation
  11. close order

# ============================================================
# 2. flow detail
# ============================================================

step_1_create_order:
  entry_paths:
    - create from estimate handoff
    - create as standalone order
  resulting_order_state:
    - draft

step_2_confirm_order:
  condition:
    - order content is sufficiently fixed for execution handling
  resulting_order_state:
    - confirmed

step_3_perform_inventory_check:
  outputs:
    - inventory status
    - supply understanding
  resulting_order_state:
    - inventory_checked

step_4_calculate_lead_time:
  outputs:
    - lead time basis
    - internal explanation basis

step_5_calculate_delivery_candidates:
  outputs:
    - one or more candidate delivery schedules
  resulting_order_state:
    - delivery_date_calculated

step_6_record_customer_proposal:
  outputs:
    - proposal history
    - proposed date or date range
  resulting_order_state:
    - customer_proposed

step_7_record_customer_agreement:
  outputs:
    - accepted / revision / rejection trace
    - agreed schedule basis
  resulting_order_state:
    - customer_confirmed

step_8_issue_shipment_request:
  outputs:
    - shipment request record
    - request scope
  resulting_order_state:
    - shipment_requested

step_9_record_shipment_execution:
  outputs:
    - shipment result
    - shipped quantity or scope
  resulting_order_state:
    - shipped

step_10_record_delivery_confirmation:
  outputs:
    - delivery confirmation record
    - delivery evidence or note if available
  resulting_order_state:
    - delivered

step_11_close_order:
  condition:
    - no further normal execution action remains
  resulting_order_state:
    - closed

# ============================================================
# 3. operational notes
# ============================================================

notes:
  - lead time calculation and delivery candidate calculation are conceptually distinct
  - customer agreement may initially be recorded manually by internal staff
  - shipment and delivery are separated intentionally
  - close is separated from delivered intentionally

