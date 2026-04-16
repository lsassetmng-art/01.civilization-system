# ============================================================
# ORDER FLOW OPERATOR ACTION MATRIX ORDER ENTRY
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines operator actions for order entry and order detail screens.

operator_action_matrix:

  create_order_from_estimate_screen:
    primary_goal:
      - create new order from estimate-origin context
    read:
      - source estimate summary
      - customer summary
      - estimate line snapshot
      - currency context
    write:
      - order header
      - order lines
      - internal note
    actions:
      - save_draft
      - confirm_creation
      - cancel_creation
    success_result:
      - order created in draft state
    blocked_when:
      - estimate context missing
      - authorization invalid
      - required order lines missing

  create_standalone_order_screen:
    primary_goal:
      - create new standalone order
    read:
      - customer entry context
      - line entry summary
    write:
      - customer snapshot fields
      - order header
      - order lines
      - money summary
    actions:
      - save_draft
      - confirm_creation
      - cancel_creation
    success_result:
      - standalone order created in draft state
    blocked_when:
      - customer snapshot incomplete
      - currency missing
      - no valid line exists

  order_header_edit_screen:
    primary_goal:
      - maintain order-level editable fields
    read:
      - order header
      - totals
      - requested delivery date
    write:
      - requested delivery date
      - internal note
      - header fields allowed by current state
    actions:
      - save_changes
      - discard_changes
    success_result:
      - order header updated
    blocked_when:
      - order already closed
      - state policy disallows header edit

  order_line_edit_screen:
    primary_goal:
      - maintain ordered scope at line level
    read:
      - existing lines
      - line state
      - quantity and price summary
    write:
      - add line
      - update line
      - remove line if policy allows
    actions:
      - add_line
      - edit_line
      - delete_line
      - save_changes
    success_result:
      - order lines updated
    blocked_when:
      - line quantity invalid
      - line monetary values invalid
      - order state disallows structural line edits

  order_detail_screen:
    primary_goal:
      - decide the next execution action for the order
    read:
      - order summary
      - state summaries
      - remaining scope summary
      - latest execution summary
    write:
      - none directly as primary mode
    actions:
      - open_inventory_check
      - open_lead_time_calculation
      - open_delivery_candidate
      - open_customer_proposal
      - open_shipment_request
      - open_delivery_confirmation
      - open_history
      - open_closure
    success_result:
      - operator reaches next correct action surface
    blocked_when:
      - authorization invalid
      - order not found

