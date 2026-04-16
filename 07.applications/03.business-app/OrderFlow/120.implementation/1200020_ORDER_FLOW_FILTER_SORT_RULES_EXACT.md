# ============================================================
# ORDER FLOW FILTER SORT RULES EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact filter and sort rules across list surfaces.

# ============================================================
# 1. common filter rules
# ============================================================

common_filter_rules:

  keyword:
    meaning:
      - searches order_number
      - searches customer_name_snapshot
      - may search shipment_request_number on shipment surfaces
    constraints:
      - trim_whitespace
      - empty_string treated_as null

  date_range:
    meaning:
      - inclusive start
      - inclusive end for date fields
    constraints:
      - date_to must be same_or_after date_from

  multi_select_status_filters:
    meaning:
      - OR within same filter family
      - AND across different filter families
    examples:
      - order_states confirmed or inventory_checked
      - AND shipment_status not_requested

  only_open_orders:
    meaning:
      - excludes closed
      - excludes canceled unless explicitly included elsewhere

# ============================================================
# 2. allowed sort fields by surface
# ============================================================

allowed_sort_fields:

  order_list:
    - updated_at
    - order_date
    - requested_delivery_date
    - order_number
    - customer_name_snapshot
    - total_amount

  shipment_board:
    - requested_at
    - requested_ship_date
    - shipment_request_number
    - order_number

  order_history:
    - occurred_at

# ============================================================
# 3. sort direction rules
# ============================================================

sort_direction_rules:
  allowed_values:
    - asc
    - desc
  defaults:
    order_list:
      sort_by: updated_at
      sort_direction: desc
    shipment_board:
      sort_by: requested_at
      sort_direction: desc
    order_history:
      sort_by: occurred_at
      sort_direction: desc

# ============================================================
# 4. invalid filter handling
# ============================================================

invalid_filter_handling:
  rules:
    - invalid date range returns validation_error
    - unsupported sort field returns validation_error
    - unsupported status value returns validation_error
    - excessive page_size should be capped or rejected by policy

# ============================================================
# 5. ui intent
# ============================================================

ui_intent:
  - order_list optimizes next work discovery
  - shipment_board optimizes execution visibility
  - history list optimizes chronological understanding
  - filters should reduce ambiguity, not create hidden logic

