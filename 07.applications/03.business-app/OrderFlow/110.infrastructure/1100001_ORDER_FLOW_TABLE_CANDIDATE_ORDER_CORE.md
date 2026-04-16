# ============================================================
# ORDER FLOW TABLE CANDIDATE ORDER CORE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact candidate tables for order core storage.

table_candidates:

  order_record:
    role:
      - top-level order anchor
    key_columns:
      - order_id
      - company_id
      - order_number
      - order_source_type
      - order_state
      - customer_id_or_local_ref
      - order_date
      - requested_delivery_date
      - internally_promised_date
      - customer_confirmed_date
      - currency_code
      - subtotal_amount
      - tax_amount
      - total_amount
      - source_estimate_exists
      - cancel_reason
      - closed_at
      - closed_by
      - created_by
      - created_at
      - updated_at
    notes:
      - one row per order
      - overall business state is stored here

  order_line_item:
    role:
      - ordered line scope
    key_columns:
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
      - requested_ship_scope_note
      - customer_line_note
      - internal_line_note
      - source_estimate_line_id
      - created_at
      - updated_at
    notes:
      - one order has many lines
      - line state may diverge from order state

  order_customer_snapshot:
    role:
      - fixed customer/business party snapshot
    key_columns:
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
      - department_snapshot
      - destination_note_snapshot
      - locale_snapshot
      - customer_code_snapshot
      - snapshot_taken_at
    notes:
      - snapshot survives later master changes

  order_source_estimate_link:
    role:
      - source estimate traceability
    key_columns:
      - order_source_estimate_link_id
      - order_id
      - source_estimate_id
      - source_estimate_number_snapshot
      - source_estimate_version
      - source_estimate_title_snapshot
      - handoff_type
      - handoff_note
      - snapshot_taken_at
      - linked_by
    notes:
      - optional only for standalone orders
      - never reuse estimate_id as order_id

  order_status_record:
    role:
      - explicit order state transition history
    key_columns:
      - order_status_record_id
      - order_id
      - previous_order_state
      - new_order_state
      - changed_by
      - changed_at
      - change_reason_type
      - change_reason_note
      - related_record_type
      - related_record_id
    notes:
      - complements broader timeline/history storage

design_rules:
  - order_record is the business anchor
  - line, snapshot, and estimate traceability are separated intentionally
  - currency context must exist at order and line levels

