# ============================================================
# MEDICAL OPERATION LOOP MODEL
# ============================================================

status: canonical
layer: model
scope: medical-work-ui
component: medical-operation-loop

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CANONICAL LOOP
# ============================================================

canonical_medical_operation_loop:
- facility_state_loaded
- patient_inflow_checked
- staff_and_bed_state_checked
- medicine_and_equipment_state_checked
- player_or_ai_adjustment_selected
- treatment_and_triage_resolved
- overcapacity_or_incident_check_run
- result_summary_generated
- care_state_updated
- medical_history_written


# ============================================================
# 2. LOOP TYPES
# ============================================================

loop_types:
- daily_clinic_loop
- shift_hospital_loop
- emergency_response_loop
- inpatient_recovery_loop
- medicine_supply_loop
- crisis_overflow_loop


# ============================================================
# 3. FINAL RULE
# ============================================================

Medical operation must define
what is routine care,
what is acute care,
and what becomes capacity crisis.
