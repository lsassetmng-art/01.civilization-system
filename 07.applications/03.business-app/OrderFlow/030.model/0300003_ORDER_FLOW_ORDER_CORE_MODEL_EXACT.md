# ============================================================
# ORDER FLOW ORDER CORE MODEL EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the exact core business models for order creation,
order identity, customer snapshot retention, and estimate linkage.

# ============================================================
# 1. order_record
# ============================================================

order_record:
  purpose:
    - top-level order business record
    - execution anchor of OrderFlow
  required_fields:
    - order_id
    - company_id
    - order_number
    - order_source_type
    - order_state
    - customer_id_or_local_ref
    - order_date
    - currency_code
    - subtotal_amount
    - tax_amount
    - total_amount
    - source_estimate_exists
    - created_by
    - created_at
    - updated_at
  optional_fields:
    - source_estimate_id
    - requested_delivery_date
    - internally_promised_date
    - customer_confirmed_date
    - cancel_reason
    - closed_at
    - closed_by
  rules:
    - order_id is independent from estimate_id
    - order_state expresses overall business execution responsibility
    - currency_code is mandatory from initial design
    - totals must preserve multicurrency context

# ============================================================
# 2. order_source_type
# ============================================================

order_source_type:
  values:
    - from_estimate
    - standalone
  meaning:
    from_estimate:
      - created through estimate handoff or copy
    standalone:
      - created directly in OrderFlow

# ============================================================
# 3. order_line_item
# ============================================================

order_line_item:
  purpose:
    - line-level ordered goods or service scope
  required_fields:
    - order_line_id
    - order_id
    - line_no
    - item_ref_or_local_code
    - item_name_snapshot
    - ordered_quantity
    - unit_of_measure
    - unit_price_amount
    - currency_code
    - line_subtotal_amount
    - line_state
  optional_fields:
    - requested_ship_scope_note
    - customer_line_note
    - internal_line_note
    - source_estimate_line_id
  rules:
    - line item stores snapshot fields needed for business continuity
    - price and subtotal keep currency context at line level
    - line_state may differ from order_state

# ============================================================
# 4. line_state
# ============================================================

line_state:
  values:
    - open
    - partially_allocated
    - ready_for_shipment
    - partially_shipped
    - shipped
    - partially_delivered
    - delivered
    - closed
    - canceled

# ============================================================
# 5. order_customer_snapshot
# ============================================================

order_customer_snapshot:
  purpose:
    - preserves the customer-facing and operational customer identity
      as used at order creation time
  required_fields:
    - order_customer_snapshot_id
    - order_id
    - customer_name_snapshot
    - customer_display_name_snapshot
    - billing_name_snapshot
    - shipping_name_snapshot
    - contact_person_snapshot
    - contact_email_snapshot
    - contact_phone_snapshot
    - billing_address_snapshot
    - shipping_address_snapshot
    - snapshot_taken_at
  optional_fields:
    - department_snapshot
    - destination_note_snapshot
    - locale_snapshot
    - customer_code_snapshot
  rules:
    - snapshot is retained even if master data later changes
    - shipping and billing can differ
    - snapshot may originate from estimate or direct order entry

# ============================================================
# 6. order_source_estimate_link
# ============================================================

order_source_estimate_link:
  purpose:
    - keeps business traceability to the source estimate
  required_fields:
    - order_source_estimate_link_id
    - order_id
    - source_estimate_id
    - source_estimate_number_snapshot
    - handoff_type
    - snapshot_taken_at
    - linked_by
  optional_fields:
    - source_estimate_version
    - source_estimate_title_snapshot
    - handoff_note
  rules:
    - same-record promotion is forbidden
    - order must keep source traceability without sharing record identity
    - source_estimate_link is optional only for standalone orders

# ============================================================
# 7. handoff_type
# ============================================================

handoff_type:
  values:
    - copy
    - deeplink_copy
    - internal_create_from_estimate

# ============================================================
# 8. order_status_record
# ============================================================

order_status_record:
  purpose:
    - explicit status history support for order-level state movement
  required_fields:
    - order_status_record_id
    - order_id
    - previous_order_state
    - new_order_state
    - changed_by
    - changed_at
    - change_reason_type
  optional_fields:
    - change_reason_note
    - related_record_type
    - related_record_id
  rules:
    - state transitions should be auditable
    - order_status_record complements but does not replace broader history entry

