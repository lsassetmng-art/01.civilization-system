# ============================================================
# MEDICINE EQUIPMENT AND SUPPLY MODEL
# ============================================================

status: canonical
layer: model
scope: medical-work-ui
component: medicine-equipment-and-supply

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SUPPLY TYPES
# ============================================================

supply_types:
- basic_medicine
- emergency_medicine
- surgical_supply
- rehabilitation_supply
- diagnostic_supply
- sanitation_supply
- isolation_supply
- blood_or_equivalent_reserve
- memorial_or_terminal_care_supply


# ============================================================
# 2. SUPPLY FIELDS
# ============================================================

supply_fields:
- supply_id
- supply_type
- current_quantity
- reserve_quantity
- critical_threshold
- expiry_risk
- procurement_difficulty
- substitution_supported
- emergency_priority_level


# ============================================================
# 3. ACTIONS
# ============================================================

supply_actions:
- reorder_supply
- prioritize_critical_supply
- use_substitute_supply
- reserve_for_emergency
- release_reserve_stock
- delay_noncritical_usage
- request_state_or_military_support
- emergency_shared_supply_protocol


# ============================================================
# 4. FINAL RULE
# ============================================================

Medical supply control must show
that shortages reshape triage,
not just inventory.
