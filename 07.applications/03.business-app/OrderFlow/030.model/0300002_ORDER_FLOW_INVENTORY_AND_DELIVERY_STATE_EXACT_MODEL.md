# ============================================================
# ORDER FLOW INVENTORY AND DELIVERY STATE EXACT MODEL
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the exact meanings of inventory, proposal, shipment,
and delivery states used alongside order_state.

# ============================================================
# 1. inventory status
# ============================================================

inventory_status_list:
  - not_checked
  - available
  - partially_available
  - unavailable
  - replenishment_required
  - stale

inventory_status_meanings:

  not_checked:
    meaning:
      - no fulfillment-context inventory confirmation has been completed yet

  available:
    meaning:
      - requested quantity can be supported according to current reference

  partially_available:
    meaning:
      - some requested quantity can be supported but not all

  unavailable:
    meaning:
      - requested quantity cannot currently be supported

  replenishment_required:
    meaning:
      - additional supply action is required before full execution becomes possible

  stale:
    meaning:
      - inventory reference exists but cannot be trusted as fresh enough for confident execution

# ============================================================
# 2. customer proposal status
# ============================================================

customer_proposal_status_list:
  - not_proposed
  - proposed
  - revision_requested
  - accepted
  - rejected

customer_proposal_status_meanings:

  not_proposed:
    meaning:
      - no formal customer-facing delivery proposal record exists yet

  proposed:
    meaning:
      - proposal has been made and answer is not yet finalized

  revision_requested:
    meaning:
      - customer or internal side requires another proposal round

  accepted:
    meaning:
      - proposed schedule was accepted and recorded

  rejected:
    meaning:
      - proposed schedule was not accepted and cannot be treated as agreed

# ============================================================
# 3. shipment status
# ============================================================

shipment_status_list:
  - not_requested
  - requested
  - accepted
  - rejected
  - partially_shipped
  - shipped

shipment_status_meanings:

  not_requested:
    meaning:
      - no shipment request has been issued

  requested:
    meaning:
      - shipment request exists and is awaiting downstream handling

  accepted:
    meaning:
      - shipment-side execution target accepted the request

  rejected:
    meaning:
      - shipment-side execution target rejected the request or cannot proceed as requested

  partially_shipped:
    meaning:
      - some quantity has been shipped but remainder still exists

  shipped:
    meaning:
      - shipment execution for the relevant scope has been completed

# ============================================================
# 4. delivery status
# ============================================================

delivery_status_list:
  - not_confirmed
  - partially_delivered
  - delivered
  - delivery_confirmed

delivery_status_meanings:

  not_confirmed:
    meaning:
      - no delivery confirmation has been recorded yet

  partially_delivered:
    meaning:
      - only part of the expected scope has been confirmed delivered

  delivered:
    meaning:
      - operational delivery has happened for the relevant scope

  delivery_confirmed:
    meaning:
      - delivery confirmation input has been explicitly recorded by responsible operator

# ============================================================
# 5. relationship rules
# ============================================================

relationship_rules:
  - inventory_status may block proposal quality but does not directly set order_state by itself
  - customer_proposal_status accepted usually supports customer_confirmed
  - shipment_status shipped does not guarantee delivery_status delivered
  - delivery_status delivery_confirmed does not automatically imply order_state closed
  - order close requires business completion judgment beyond raw shipment or delivery status

