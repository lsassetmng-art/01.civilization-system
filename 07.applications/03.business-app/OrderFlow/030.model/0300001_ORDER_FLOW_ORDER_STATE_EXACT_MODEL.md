# ============================================================
# ORDER FLOW ORDER STATE EXACT MODEL
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the exact business meaning of order-level states in OrderFlow.

# ============================================================
# 1. order state list
# ============================================================

order_state_list:
  - draft
  - confirmed
  - inventory_checked
  - delivery_date_calculated
  - customer_proposed
  - customer_confirmed
  - shipment_requested
  - shipped
  - delivered
  - closed
  - canceled

# ============================================================
# 2. state meanings
# ============================================================

state_meanings:

  draft:
    meaning:
      - order record exists
      - editing is still expected
      - business execution has not started formally
    allowed_actions:
      - edit order header
      - edit order lines
      - save draft
      - cancel draft
      - confirm order
    disallowed_actions:
      - final close
    notes:
      - standalone order creation and estimate-origin order creation both start here

  confirmed:
    meaning:
      - order intent is fixed enough for fulfillment-side handling
      - basic business confirmation completed
    allowed_actions:
      - inventory check
      - recalculate order-related fields
      - move back to draft only by explicit internal operation if policy allows
    disallowed_actions:
      - direct close without further handling except cancellation path
    notes:
      - this is the first execution-ready state

  inventory_checked:
    meaning:
      - inventory confirmation has been performed in fulfillment context
      - result may be available, partial, unavailable, or stale
    allowed_actions:
      - lead time calculation
      - re-check inventory
      - update supply expectation
    disallowed_actions:
      - skip directly to customer confirmation without delivery proposal path
    notes:
      - inventory_checked does not imply enough stock

  delivery_date_calculated:
    meaning:
      - one or more delivery schedule candidates have been calculated
      - calculation basis is available for internal review
    allowed_actions:
      - customer proposal
      - recalculate delivery candidates
      - repeat inventory and lead time review
    disallowed_actions:
      - direct shipment request unless internal policy explicitly allows internal no-proposal shortcut
    notes:
      - candidate generation must exist before proposal in normal flow

  customer_proposed:
    meaning:
      - at least one delivery proposal has been formally recorded
      - awaiting customer answer or internal follow-up
    allowed_actions:
      - record customer response
      - revise proposal
      - re-propose
      - withdraw proposal internally if still unresolved
    disallowed_actions:
      - final shipment request as accepted schedule unless agreement exists
    notes:
      - proposal history must remain visible

  customer_confirmed:
    meaning:
      - customer acceptance or internally recognized agreement has been recorded
      - execution can proceed against agreed delivery expectation
    allowed_actions:
      - create shipment request
      - re-open proposal path if agreement breaks
    disallowed_actions:
      - silent date changes without new internal record
    notes:
      - initial phase may use internal manual recording of customer acceptance

  shipment_requested:
    meaning:
      - shipment request has been issued for all or part of the order
      - downstream execution has been asked to act
    allowed_actions:
      - update shipment request state
      - record partial shipment
      - record shipment rejection / retry
    disallowed_actions:
      - close unless delivery responsibility is resolved
    notes:
      - shipment request may be partial

  shipped:
    meaning:
      - shipment execution has occurred for all or part of the order
      - goods have left shipment execution responsibility to some degree
    allowed_actions:
      - record delivery confirmation
      - record remaining unshipped quantity
      - issue additional shipment request for remaining quantity
    disallowed_actions:
      - assume full delivery automatically
    notes:
      - shipped does not always mean fully shipped

  delivered:
    meaning:
      - delivery result has been recorded at the order level
      - order is operationally delivered in whole or accepted business completion form
    allowed_actions:
      - close order
      - attach delivery completion evidence or notes
    disallowed_actions:
      - none, except policy-restricted reopen operations
    notes:
      - delivered may coexist with partial patterns if business closure rule allows

  closed:
    meaning:
      - order is considered complete from OrderFlow responsibility viewpoint
      - no further normal execution action remains
    allowed_actions:
      - read history
      - export / handoff downstream if needed
    disallowed_actions:
      - ordinary business editing
    notes:
      - close is an operational completion state, not merely a delivery event state

  canceled:
    meaning:
      - order execution was stopped and the order is no longer active
    allowed_actions:
      - read history
      - audit review
    disallowed_actions:
      - normal execution continuation
    notes:
      - cancellation reason should be retained

# ============================================================
# 3. preferred transition path
# ============================================================

preferred_transition_path:
  - draft
  - confirmed
  - inventory_checked
  - delivery_date_calculated
  - customer_proposed
  - customer_confirmed
  - shipment_requested
  - shipped
  - delivered
  - closed

# ============================================================
# 4. exceptional paths
# ============================================================

exceptional_paths:
  - draft -> canceled
  - confirmed -> canceled
  - inventory_checked -> canceled
  - delivery_date_calculated -> customer_proposed
  - customer_proposed -> delivery_date_calculated
  - customer_proposed -> canceled
  - customer_confirmed -> customer_proposed
  - shipment_requested -> customer_proposed
  - shipped -> shipment_requested
  - delivered -> closed

# ============================================================
# 5. state design rules
# ============================================================

rules:
  - order_state is not a replacement for inventory_status
  - order_state is not a replacement for shipment_status
  - order_state must express overall order execution responsibility
  - partial execution details must be handled by lower-level shipment and delivery records
  - closed is explicitly separated from delivered
  - canceled is terminal unless special administrative reopen policy exists

