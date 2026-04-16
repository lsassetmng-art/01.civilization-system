# ============================================================
# ORDER FLOW PARTIAL SHIPMENT AND PARTIAL DELIVERY FLOW
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines how OrderFlow handles partial shipment and partial delivery.

# ============================================================
# 1. policy
# ============================================================

initial_policy:
  - partial shipment is allowed
  - partial delivery is allowed
  - remaining quantity must stay visible
  - order close must not happen silently while remaining scope exists
  - business-approved completion may still allow close under explicit rule

# ============================================================
# 2. partial shipment flow
# ============================================================

partial_shipment_flow:
  1. shipment request is issued for full or partial scope
  2. shipment execution records shipped subset
  3. remaining quantity is retained as open scope
  4. shipment status becomes partially_shipped where appropriate
  5. additional shipment request may be issued for remaining scope
  6. order state may stay shipment_requested or shipped depending on overall handling rule

# ============================================================
# 3. partial delivery flow
# ============================================================

partial_delivery_flow:
  1. some shipped scope reaches delivered condition
  2. delivery confirmation records partial scope
  3. delivery status becomes partially_delivered where appropriate
  4. remaining undelivered scope stays visible
  5. additional shipment or delivery completion handling continues
  6. order cannot close unless explicit completion rule is satisfied

# ============================================================
# 4. close control
# ============================================================

close_control_rules:
  - close requires explicit business completion judgment
  - close is not triggered only because one shipment was completed
  - close is not triggered only because one delivery confirmation exists
  - remaining quantity, rejected scope, or canceled remainder must be explainable
  - partial completion with accepted remainder cancellation may still become closeable

# ============================================================
# 5. design intention
# ============================================================

design_intention:
  - OrderFlow must support realistic business execution
  - partials are normal business events, not edge-only anomalies
  - visibility of remaining scope is mandatory
  - order-level state and lower-scope shipment/delivery states must not be conflated

