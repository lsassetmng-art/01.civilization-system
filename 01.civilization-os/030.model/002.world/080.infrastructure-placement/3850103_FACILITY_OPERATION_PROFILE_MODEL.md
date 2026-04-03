# ============================================================
# FACILITY OPERATION PROFILE MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-economics-db
component: facility-operation-profile

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the operation requirements
for already-built facilities.


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

facility_operation_profile_fields:
- operation_profile_id
- facility_type
- power_required
- water_required
- network_required
- road_access_required
- operator_staff_required
- nation_permission_required
- city_permission_required
- open_hours_profile
- suspension_on_infra_failure
- suspension_on_operator_failure
- partial_open_supported


# ============================================================
# 3. FINAL RULE
# ============================================================

Operation profile defines
what must remain true
for a facility to stay usable.
