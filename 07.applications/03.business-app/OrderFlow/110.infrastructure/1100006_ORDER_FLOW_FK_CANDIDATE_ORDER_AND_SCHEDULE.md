# ============================================================
# ORDER FLOW FK CANDIDATE ORDER AND SCHEDULE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines foreign key candidates for order core and schedule-side tables.

fk_candidates:

  order_line_item:
    candidate_foreign_keys:
      - order_id -> order_record.order_id

  order_customer_snapshot:
    candidate_foreign_keys:
      - order_id -> order_record.order_id

  order_source_estimate_link:
    candidate_foreign_keys:
      - order_id -> order_record.order_id

  order_status_record:
    candidate_foreign_keys:
      - order_id -> order_record.order_id

  order_inventory_check_record:
    candidate_foreign_keys:
      - order_id -> order_record.order_id

  order_supply_status_record:
    candidate_foreign_keys:
      - order_id -> order_record.order_id

  order_lead_time_record:
    candidate_foreign_keys:
      - order_id -> order_record.order_id
      - source_inventory_check_record_id -> order_inventory_check_record.order_inventory_check_record_id
      - source_supply_status_record_id -> order_supply_status_record.order_supply_status_record_id

  delivery_schedule_calculation_record:
    candidate_foreign_keys:
      - order_id -> order_record.order_id
      - source_lead_time_record_id -> order_lead_time_record.order_lead_time_record_id
      - source_inventory_check_record_id -> order_inventory_check_record.order_inventory_check_record_id

  delivery_schedule_candidate:
    candidate_foreign_keys:
      - order_id -> order_record.order_id
      - delivery_schedule_calculation_record_id -> delivery_schedule_calculation_record.delivery_schedule_calculation_record_id

  delivery_schedule_confirmed_record:
    candidate_foreign_keys:
      - order_id -> order_record.order_id
      - source_candidate_id -> delivery_schedule_candidate.delivery_schedule_candidate_id

fk_design_notes:
  - source_* references may be nullable where recalculation history is partial
  - order-level FK is the baseline relationship in all schedule-side tables
  - estimate-side external IDs are traceability refs, not DB FKs in this app scope

