# ============================================================
# ORDER FLOW ORDER ENTRY AND DETAIL SCREEN EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the exact role of order creation, editing, and detail screens.

# ============================================================
# 1. create_order_from_estimate_screen
# ============================================================

create_order_from_estimate_screen:
  purpose:
    - create an order from estimate-origin handoff
  must_show:
    - source estimate summary
    - source estimate number snapshot
    - customer summary
    - estimate line snapshot
    - initial order currency
  allowed_actions:
    - accept copied content
    - adjust order header
    - adjust order lines
    - save draft
    - confirm creation
  must_not_do:
    - edit source estimate directly
  notes:
    - traceability to estimate must remain visible

# ============================================================
# 2. create_standalone_order_screen
# ============================================================

create_standalone_order_screen:
  purpose:
    - create an order directly inside OrderFlow
  must_show:
    - customer entry area
    - order header fields
    - currency selection
    - line entry block
  allowed_actions:
    - save draft
    - confirm creation
  notes:
    - standalone creation remains first-class

# ============================================================
# 3. order_header_edit_screen
# ============================================================

order_header_edit_screen:
  purpose:
    - edit order-level fields before or during controlled execution stages
  must_show:
    - order number
    - customer summary
    - order date
    - requested delivery date
    - currency context
    - overall totals
  allowed_actions:
    - edit allowed fields
    - save
    - cancel edit
  notes:
    - editing restrictions may increase after later states

# ============================================================
# 4. order_line_edit_screen
# ============================================================

order_line_edit_screen:
  purpose:
    - maintain line-level ordered scope
  must_show:
    - line number
    - item snapshot
    - ordered quantity
    - unit
    - unit price
    - subtotal
    - line state
  allowed_actions:
    - add line
    - edit line
    - remove line if policy allows
    - reorder line sequence if needed
  notes:
    - line-level remaining scope becomes important later

# ============================================================
# 5. customer_snapshot_screen
# ============================================================

customer_snapshot_screen:
  purpose:
    - show the preserved customer snapshot tied to the order
  must_show:
    - customer name snapshot
    - contact snapshot
    - billing snapshot
    - shipping snapshot
    - locale snapshot if available
  allowed_actions:
    - view only in normal cases
  notes:
    - snapshot is retained for historical stability

# ============================================================
# 6. order_detail_screen
# ============================================================

order_detail_screen:
  purpose:
    - main execution hub for the order
  must_show:
    - order summary
    - order state
    - inventory summary
    - latest delivery candidate summary
    - customer proposal summary
    - shipment summary
    - delivery summary
    - remaining scope summary if partials exist
  allowed_actions:
    - move to inventory check
    - move to lead time calculation
    - move to proposal
    - move to shipment request
    - move to delivery confirmation
    - open history
    - open closure screen
  notes:
    - this screen should answer "what is the next business action?"

