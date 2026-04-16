# ============================================================
# ORDER FLOW INVENTORY AND SCHEDULE MODEL EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact models for inventory confirmation,
supply understanding, lead time, and delivery schedule calculation.

# ============================================================
# 1. order_inventory_check_record
# ============================================================

order_inventory_check_record:
  purpose:
    - captures fulfillment-context inventory confirmation
  required_fields:
    - order_inventory_check_record_id
    - order_id
    - inventory_status
    - checked_at
    - checked_by
    - freshness_type
    - inventory_source_type
  optional_fields:
    - source_system_name
    - source_reference_id
    - summary_note
  rules:
    - inventory check must preserve freshness semantics
    - one order may have multiple inventory checks over time

# ============================================================
# 2. freshness_type
# ============================================================

freshness_type:
  values:
    - fresh
    - cached
    - stale
    - unknown

# ============================================================
# 3. inventory_source_type
# ============================================================

inventory_source_type:
  values:
    - erp
    - app_local
    - external_reference
    - manual_confirmation

# ============================================================
# 4. order_supply_status_record
# ============================================================

order_supply_status_record:
  purpose:
    - preserves supply-side understanding derived from inventory and replenishment thinking
  required_fields:
    - order_supply_status_record_id
    - order_id
    - supply_status_type
    - recorded_at
    - recorded_by
  optional_fields:
    - expected_replenishment_date
    - supply_note
  rules:
    - supply interpretation is separate from raw inventory status

# ============================================================
# 5. supply_status_type
# ============================================================

supply_status_type:
  values:
    - immediately_fulfillable
    - partially_fulfillable
    - waiting_replenishment
    - uncertain
    - blocked

# ============================================================
# 6. order_lead_time_record
# ============================================================

order_lead_time_record:
  purpose:
    - stores lead time calculation result and basis
  required_fields:
    - order_lead_time_record_id
    - order_id
    - lead_time_days
    - lead_time_basis_type
    - calculated_at
    - calculated_by
  optional_fields:
    - lead_time_note
    - source_inventory_check_record_id
    - source_supply_status_record_id
  rules:
    - recalculation may create multiple records
    - result must be historically visible

# ============================================================
# 7. lead_time_basis_type
# ============================================================

lead_time_basis_type:
  values:
    - stock_available
    - partial_stock_waiting_supply
    - made_to_order
    - supplier_confirmation
    - manual_estimation

# ============================================================
# 8. delivery_schedule_candidate
# ============================================================

delivery_schedule_candidate:
  purpose:
    - candidate date or date-range produced for order fulfillment
  required_fields:
    - delivery_schedule_candidate_id
    - order_id
    - candidate_type
    - candidate_label
    - candidate_start_date
    - candidate_end_date
    - confidence_type
    - generated_at
    - generated_by
  optional_fields:
    - basis_note
    - rank_order
    - proposal_ready_flag
  rules:
    - one order may hold multiple candidates
    - candidate can be a single date or range

# ============================================================
# 9. candidate_type
# ============================================================

candidate_type:
  values:
    - single_date
    - date_range

# ============================================================
# 10. confidence_type
# ============================================================

confidence_type:
  values:
    - high
    - medium
    - low
    - manual

# ============================================================
# 11. delivery_schedule_calculation_record
# ============================================================

delivery_schedule_calculation_record:
  purpose:
    - calculation session record for delivery candidate generation
  required_fields:
    - delivery_schedule_calculation_record_id
    - order_id
    - calculation_basis_summary
    - calculated_at
    - calculated_by
  optional_fields:
    - source_lead_time_record_id
    - source_inventory_check_record_id
    - calculation_note
  rules:
    - candidate rows and calculation session should be traceable

# ============================================================
# 12. delivery_schedule_confirmed_record
# ============================================================

delivery_schedule_confirmed_record:
  purpose:
    - stores internally accepted schedule basis for execution
  required_fields:
    - delivery_schedule_confirmed_record_id
    - order_id
    - confirmed_date_or_start
    - confirmed_end_date
    - confirmed_at
    - confirmed_by
    - confirmation_basis_type
  optional_fields:
    - source_candidate_id
    - confirmation_note
  rules:
    - this is internal execution confirmation, not necessarily customer agreement itself

