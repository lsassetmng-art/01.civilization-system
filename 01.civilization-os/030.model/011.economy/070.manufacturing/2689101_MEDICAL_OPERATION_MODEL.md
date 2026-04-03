# ============================================================
# MEDICAL OPERATION MODEL
# ============================================================

status: canonical
layer: model
scope: industry-pack
component: medical-operation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CORE FLOW
# ============================================================

- service_program_defined
- eligibility_checked
- facility_assigned
- treatment_or_care_delivered
- record_updated
- compliance_reviewed


# ============================================================
# 2. FINAL RULE
# ============================================================

Medical operation must remain service-eligibility-aware
and compliance-aware.
