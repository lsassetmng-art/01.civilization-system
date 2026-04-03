# ============================================================
# MEDICAL WORK UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: medical-work-ui
component: medical-work-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical UI architecture
for medical work,
including outpatient care,
inpatient care,
emergency response,
staff allocation,
supply handling,
recovery tracking,
and institution continuity.


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Medical Work UI must separate:

- facility context
- patient flow
- staff and department allocation
- bed and treatment capacity
- medicine and equipment supply
- emergency and triage handling
- recovery and discharge handling
- history and clinical persistence

No medical UI should reduce care
to a simple treatment action
without capacity, triage,
or continuity-of-care logic.


# ============================================================
# 3. SUPPORTED MEDICAL OPERATION FAMILIES
# ============================================================

supported_medical_operation_families:
- local_clinic_operation
- general_hospital_operation
- emergency_hospital_operation
- specialist_hospital_operation
- island_clinic_operation
- rehabilitation_operation
- military_recovery_support_operation
- memorial_or_terminal_care_operation


# ============================================================
# 4. REQUIRED UI LAYERS
# ============================================================

required_ui_layers:
- facility_overview_layer
- outpatient_flow_layer
- inpatient_and_bed_layer
- emergency_and_triage_layer
- staff_and_department_layer
- medicine_and_equipment_layer
- recovery_and_discharge_layer
- crisis_and_overcapacity_layer
- ai_assist_layer
- result_summary_layer
- medical_history_layer


# ============================================================
# 5. FINAL RULE
# ============================================================

Medical UI must make care work feel
capacity-bound, ethically weighted,
resource-sensitive, and humanly continuous.
