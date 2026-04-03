# ============================================================
# FACILITY ACTIVATION PROFILE MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-economics-db
component: facility-activation-profile

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines activation requirements
for facilities after construction completes.


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

facility_activation_profile_fields:
- activation_profile_id
- facility_type
- construction_complete_required
- review_approved_required
- infrastructure_ready_required
- operator_registered_required
- tenant_minimum_ready_required
- staffing_ready_required
- opening_notice_required
- activation_delay_seconds


# ============================================================
# 3. FINAL RULE
# ============================================================

A facility may be complete
without being open.
Activation rules must define that boundary.
