# ============================================================
# HOSPITAL KPI MODEL
# ============================================================

status: canonical
layer: model
scope: hospital-detailed-configuration-and-auto-operation
component: hospital-kpi

owner: Boss
prepared_by: Zero


hospital_kpis:
- patient_throughput
- average_wait_time
- bed_utilization
- emergency_response_time
- treatment_success_proxy
- sanitation_score
- safety_score
- medicine_supply_stability
- staffing_pressure_score
- public_access_score
- welfare_support_score


# FINAL RULE

Hospital KPI
must support safe intervention and continuity management.
