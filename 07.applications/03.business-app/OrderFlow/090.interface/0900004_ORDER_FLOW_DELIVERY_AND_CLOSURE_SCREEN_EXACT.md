# ============================================================
# ORDER FLOW DELIVERY AND CLOSURE SCREEN EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines delivery confirmation, partial delivery,
history, and closure screen responsibilities.

# ============================================================
# 1. delivery_confirmation_input_screen
# ============================================================

delivery_confirmation_input_screen:
  purpose:
    - record order-level delivery confirmation
  must_show:
    - order summary
    - latest shipment summary
    - confirmation date
    - delivery status
    - note / issue area
  allowed_actions:
    - record delivery confirmation
    - attach note
    - continue as partial if not fully delivered
  notes:
    - shipment execution and delivery confirmation are distinct

# ============================================================
# 2. partial_delivery_confirmation_screen
# ============================================================

partial_delivery_confirmation_screen:
  purpose:
    - record delivered scope at partial line level
  must_show:
    - order lines
    - delivered quantity input
    - remaining quantity view
    - short delivery or incomplete reason note
  allowed_actions:
    - record partial delivered quantities
    - save record
  notes:
    - remaining scope must stay visible after save

# ============================================================
# 3. order_history_screen
# ============================================================

order_history_screen:
  purpose:
    - display readable business timeline
  must_show:
    - chronological entries
    - actor display name
    - history label
    - related event summary
  allowed_actions:
    - open related detail
  notes:
    - history is for operator understanding, not only strict audit

# ============================================================
# 4. order_closure_screen
# ============================================================

order_closure_screen:
  purpose:
    - perform final operational completion judgment
  must_show:
    - order state summary
    - delivery summary
    - remaining quantity summary
    - unresolved issue summary
    - close readiness explanation
  allowed_actions:
    - close order
    - stop closure
    - add closure note
  notes:
    - close must be explicit
    - close must not be silent after one shipment or one delivery record

# ============================================================
# 5. screen relationship rules
# ============================================================

rules:
  - delivery confirmation input does not automatically close the order
  - partial delivery screen is separate to preserve quantity clarity
  - history screen is read-heavy
  - closure screen is judgment-heavy and should remain explicit

