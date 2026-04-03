# ============================================================
# MILITARY FACILITY INTAKE MODEL
# ============================================================

status: canonical
layer: model
scope: military-service-and-mobilization
component: military-facility-intake

owner: Boss
prepared_by: Zero


# ============================================================
# 1. INTAKE STAGES
# ============================================================

intake_stages:
- notice_or_application_received
- reporting_or_submission
- identity_verification
- health_screening
- aptitude_screening
- exemption_review
- assignment_decision
- training_entry


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

required_fields:
- military_facility_id
- nation_id
- intake_mode
- candidate_id
- intake_state
- screening_result
- exemption_result
- assignment_result
- training_entry_state


# ============================================================
# 3. FINAL RULE
# ============================================================

Military facility intake
is the execution stage
for policy defined elsewhere.
