# ============================================================
# ORDER FLOW PERMISSION MATRIX ORDER AND EXECUTION
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines permissions for order entry, editing, inventory, lead time,
delivery candidate, and proposal handling.

permission_matrix:

  create_order_from_estimate:
    allowed_roles:
      - sales_operator
      - order_coordinator
      - order_manager
      - admin_operator

  create_standalone_order:
    allowed_roles:
      - sales_operator
      - order_coordinator
      - order_manager
      - admin_operator

  edit_order_header:
    allowed_roles:
      - sales_operator
      - order_coordinator
      - order_manager
      - admin_operator
    restrictions:
      - current state policy may narrow editability

  edit_order_lines:
    allowed_roles:
      - sales_operator
      - order_coordinator
      - order_manager
      - admin_operator
    restrictions:
      - shipped_or_delivered_scope must not be broken

  view_customer_snapshot:
    allowed_roles:
      - sales_operator
      - order_coordinator
      - warehouse_operator
      - delivery_confirmation_operator
      - order_manager
      - admin_operator

  record_inventory_check:
    allowed_roles:
      - order_coordinator
      - order_manager
      - admin_operator

  calculate_lead_time:
    allowed_roles:
      - order_coordinator
      - order_manager
      - admin_operator

  calculate_delivery_candidates:
    allowed_roles:
      - order_coordinator
      - order_manager
      - admin_operator

  create_customer_proposal:
    allowed_roles:
      - sales_operator
      - order_coordinator
      - order_manager
      - admin_operator

  record_customer_response:
    allowed_roles:
      - sales_operator
      - order_coordinator
      - order_manager
      - admin_operator

  view_order_history:
    allowed_roles:
      - sales_operator
      - order_coordinator
      - warehouse_operator
      - delivery_confirmation_operator
      - order_manager
      - admin_operator

permission_notes:
  - view permission does not automatically imply edit permission
  - order_manager may operate across multiple stages
  - admin_operator is not intended as the default everyday role

