# ============================================================
# ORDER FLOW ROLE MODEL EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the primary business roles used in OrderFlow authorization design.

role_model:

  sales_operator:
    business_meaning:
      - creates and edits orders
      - handles estimate-origin order creation
      - records customer proposal and response
    typical_focus:
      - order entry
      - customer-facing delivery coordination

  order_coordinator:
    business_meaning:
      - coordinates fulfillment-side execution
      - reviews inventory, lead time, and delivery candidate basis
    typical_focus:
      - execution planning
      - schedule coordination

  warehouse_operator:
    business_meaning:
      - handles shipment request acceptance and shipment execution visibility
    typical_focus:
      - shipment-side operational handling

  delivery_confirmation_operator:
    business_meaning:
      - records delivery confirmation and partial delivery progress
    typical_focus:
      - delivery-side completion input

  order_manager:
    business_meaning:
      - broader supervisory role over order progress
      - can close orders under policy
    typical_focus:
      - issue resolution
      - closure judgment

  admin_operator:
    business_meaning:
      - administrative override role
      - handles exceptional cases and access management support
    typical_focus:
      - exceptional correction
      - administrative actions

role_notes:
  - one actor may hold multiple roles
  - app authorization should be role-plus-scope based
  - company scope remains mandatory even for broad roles

