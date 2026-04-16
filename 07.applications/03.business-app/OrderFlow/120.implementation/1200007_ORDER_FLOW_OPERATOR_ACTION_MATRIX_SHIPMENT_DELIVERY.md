# ============================================================
# ORDER FLOW OPERATOR ACTION MATRIX SHIPMENT DELIVERY
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines operator actions for shipment request, shipment execution,
delivery confirmation, and partial handling.

operator_action_matrix:

  shipment_request_screen:
    primary_goal:
      - create shipment request for full or partial scope
    read:
      - order summary
      - shippable scope
      - remaining scope
    write:
      - request scope type
      - requested ship date
      - target execution ref
      - shipment instruction note
      - request lines
    actions:
      - create_shipment_request
      - save_request_draft
      - cancel_request
    success_result:
      - order reaches shipment_requested
    blocked_when:
      - customer agreement missing under normal path
      - no valid request line exists

  shipment_request_detail_screen:
    primary_goal:
      - inspect and update one shipment request
    read:
      - request number
      - request scope
      - status
      - result
      - linked execution
    write:
      - result note
      - request-level update note
    actions:
      - record_acceptance
      - record_rejection
      - open_execution_record
    success_result:
      - shipment status updated
    blocked_when:
      - request not found
      - update conflicts with closed request policy

  shipment_status_board_screen:
    primary_goal:
      - monitor shipment progress across requests
    read:
      - shipment requests
      - partially shipped indicators
      - remaining shipment scope
    write:
      - none directly as main mode
    actions:
      - open_request_detail
      - open_execution_record
      - open_related_order
    success_result:
      - operator identifies pending or delayed shipment work
    blocked_when:
      - none except access failure

  delivery_confirmation_input_screen:
    primary_goal:
      - record delivery confirmation for relevant scope
    read:
      - latest shipment summary
      - order lines
      - remaining scope
    write:
      - delivery status
      - confirmation date
      - customer receipt note
      - delivery issue note
    actions:
      - record_delivery_confirmation
      - continue_to_partial_delivery_input
    success_result:
      - delivery confirmation stored
    blocked_when:
      - no shipment-side basis exists where policy requires it
      - confirmation date missing

  partial_delivery_confirmation_screen:
    primary_goal:
      - record delivered quantity at line level
    read:
      - order lines
      - already delivered quantity
      - remaining quantity
    write:
      - confirmed delivered quantity
      - line delivery note
      - short delivery reason
    actions:
      - save_partial_delivery
      - cancel_partial_entry
    success_result:
      - partial delivery remains visible and traceable
    blocked_when:
      - delivered quantity exceeds remaining quantity
      - no line selected

