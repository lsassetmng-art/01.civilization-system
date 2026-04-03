# ============================================================
# HOSPITAL STAFFING AND TRIAGE POLICY MODEL
# ============================================================

status: canonical
layer: model
scope: hospital-detailed-configuration-and-auto-operation
component: hospital-staffing-and-triage-policy

owner: Boss
prepared_by: Zero


staffing_triage_policies:
- labor_cost_min
- balanced_medical_operation
- emergency_response_priority
- quality_of_care_priority
- public_welfare_priority
- surge_capacity_priority


# FINAL RULE

Hospital staffing and triage policy
must affect wait time, safety, and survival outcomes.
