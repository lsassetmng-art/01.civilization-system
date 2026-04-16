# ============================================================
# ORDER FLOW PERMISSION MATRIX SHIPMENT AND CLOSURE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines permissions for shipment request, shipment execution,
delivery confirmation, cancellation, and closure.

permission_matrix:

  create_shipment_request:
    allowed_roles:
      - order_coordinator
      - order_manager
      - admin_operator
    optionally_allowed_roles:
      - sales_operator

  record_shipment_request_result:
    allowed_roles:
      - warehouse_operator
      - order_manager
      - admin_operator

  record_shipment_execution:
    allowed_roles:
      - warehouse_operator
      - order_manager
      - admin_operator

  view_shipment_status_board:
    allowed_roles:
      - order_coordinator
      - warehouse_operator
      - order_manager
      - admin_operator

  record_delivery_confirmation:
    allowed_roles:
      - delivery_confirmation_operator
      - order_manager
      - admin_operator

  record_partial_delivery:
    allowed_roles:
      - delivery_confirmation_operator
      - order_manager
      - admin_operator

  close_order:
    allowed_roles:
      - order_manager
      - admin_operator

  cancel_order:
    allowed_roles:
      - order_manager
      - admin_operator
    restrictions:
      - ordinary roles should not cancel freely after downstream handling exists

  administrative_reopen_or_override:
    allowed_roles:
      - admin_operator
    restrictions:
      - should require explicit audit-visible reason

permission_notes:
  - shipment execution permission should stay narrower than simple order viewing
  - close and cancel are judgment-heavy operations
  - partial handling permissions follow the same business-responsible role family

