# ============================================================
# PATIENT FLOW AND TRIAGE MODEL
# ============================================================

status: canonical
layer: model
scope: medical-work-ui
component: patient-flow-and-triage

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PATIENT FLOW FIELDS
# ============================================================

patient_flow_fields:
- patient_group_id
- intake_volume
- urgency_profile
- chronic_case_share
- acute_case_share
- referral_need_level
- family_support_need
- financial_barrier_risk
- discharge_complexity


# ============================================================
# 2. TRIAGE TYPES
# ============================================================

triage_types:
- outpatient_priority
- emergency_priority
- surgery_priority
- isolation_priority
- recovery_priority
- terminal_or_palliative_priority
- military_recovery_priority


# ============================================================
# 3. ACTIONS
# ============================================================

triage_actions:
- prioritize_critical_cases
- expand_outpatient_filter
- divert_noncritical_cases
- open_emergency_overflow
- open_isolation_capacity
- fast_track_discharge_review
- prioritize_rehabilitation
- request_external_referral


# ============================================================
# 4. FINAL RULE
# ============================================================

Medical intake must show
that patient flow is a sorting problem,
a care problem,
and a justice problem at once.
