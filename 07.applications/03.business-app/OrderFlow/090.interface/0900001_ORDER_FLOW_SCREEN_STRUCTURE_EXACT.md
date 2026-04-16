# ============================================================
# ORDER FLOW SCREEN STRUCTURE EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the exact primary screen structure of OrderFlow.

# ============================================================
# 1. primary screen groups
# ============================================================

screen_groups:
  - entry_and_navigation
  - order_entry_and_edit
  - inventory_and_schedule
  - customer_proposal
  - shipment
  - delivery_confirmation
  - closure_and_history

# ============================================================
# 2. screen list
# ============================================================

screen_list:

  entry_and_navigation:
    - home_screen
    - order_list_screen
    - order_detail_screen

  order_entry_and_edit:
    - create_order_from_estimate_screen
    - create_standalone_order_screen
    - order_header_edit_screen
    - order_line_edit_screen
    - customer_snapshot_screen

  inventory_and_schedule:
    - inventory_check_screen
    - lead_time_calculation_screen
    - delivery_candidate_screen

  customer_proposal:
    - customer_proposal_screen
    - proposal_history_screen
    - customer_response_record_screen

  shipment:
    - shipment_request_screen
    - shipment_request_detail_screen
    - shipment_status_board_screen

  delivery_confirmation:
    - delivery_confirmation_input_screen
    - partial_delivery_confirmation_screen

  closure_and_history:
    - order_history_screen
    - order_closure_screen

# ============================================================
# 3. design rules
# ============================================================

rules:
  - one screen must have one primary business responsibility
  - order_detail_screen acts as the main execution hub
  - detailed editing screens remain separated from read-heavy detail screens
  - proposal, shipment, and delivery are separated intentionally
  - history must stay visible but not dominate primary execution screens

