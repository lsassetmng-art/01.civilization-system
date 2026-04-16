# ============================================================
# ORDER FLOW TABLE CANDIDATE EXECUTION AND SCHEDULE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact candidate tables for inventory, supply,
lead time, and delivery scheduling.

table_candidates:

  order_inventory_check_record:
    role:
      - fulfillment-context inventory check history
    key_columns:
      - order_inventory_check_record_id
      - order_id
      - inventory_status
      - freshness_type
      - inventory_source_type
      - source_system_name
      - source_reference_id
      - summary_note
      - checked_at
      - checked_by

  order_supply_status_record:
    role:
      - supply interpretation history
    key_columns:
      - order_supply_status_record_id
      - order_id
      - supply_status_type
      - expected_replenishment_date
      - supply_note
      - recorded_at
      - recorded_by

  order_lead_time_record:
    role:
      - lead time calculation result history
    key_columns:
      - order_lead_time_record_id
      - order_id
      - lead_time_days
      - lead_time_basis_type
      - lead_time_note
      - source_inventory_check_record_id
      - source_supply_status_record_id
      - calculated_at
      - calculated_by

  delivery_schedule_calculation_record:
    role:
      - one delivery candidate calculation session
    key_columns:
      - delivery_schedule_calculation_record_id
      - order_id
      - calculation_basis_summary
      - source_lead_time_record_id
      - source_inventory_check_record_id
      - calculation_note
      - calculated_at
      - calculated_by

  delivery_schedule_candidate:
    role:
      - individual candidate delivery date or range
    key_columns:
      - delivery_schedule_candidate_id
      - order_id
      - delivery_schedule_calculation_record_id
      - candidate_type
      - candidate_label
      - candidate_start_date
      - candidate_end_date
      - confidence_type
      - basis_note
      - rank_order
      - proposal_ready_flag
      - generated_at
      - generated_by

  delivery_schedule_confirmed_record:
    role:
      - internal execution-side confirmed schedule basis
    key_columns:
      - delivery_schedule_confirmed_record_id
      - order_id
      - source_candidate_id
      - confirmed_date_or_start
      - confirmed_end_date
      - confirmation_basis_type
      - confirmation_note
      - confirmed_at
      - confirmed_by

design_rules:
  - raw inventory check and supply interpretation are separate
  - lead time and delivery calculation are separate
  - one calculation session may produce multiple candidates
  - internal confirmed schedule is distinct from customer proposal acceptance

