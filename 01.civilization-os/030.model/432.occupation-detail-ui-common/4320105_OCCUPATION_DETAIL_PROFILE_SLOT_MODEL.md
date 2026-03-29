# ============================================================
# OCCUPATION DETAIL PROFILE SLOT MODEL
# ============================================================

status: canonical
layer: model
scope: occupation-detail-ui-common
component: occupation-detail-profile-slot

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PROFILE SLOTS
# ============================================================

detail_profile_slots:
- operation_profile
- configuration_profile
- auto_operation_profile
- kpi_profile
- alert_profile
- intervention_profile
- inspection_or_audit_profile
- nation_difference_profile
- region_difference_profile


# ============================================================
# 2. FINAL RULE
# ============================================================

Every occupation detail system
must map to reusable profile slots.
