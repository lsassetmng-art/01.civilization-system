# ============================================================
# STAFF BED AND DEPARTMENT ALLOCATION MODEL
# ============================================================

status: canonical
layer: model
scope: medical-work-ui
component: staff-bed-and-department-allocation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. STAFF FIELDS
# ============================================================

staff_fields:
- doctor_count
- nurse_count
- technician_count
- emergency_team_count
- rehabilitation_staff_count
- administrative_staff_count
- specialist_tags
- workload_level
- burnout_risk
- reassignment_cost


# ============================================================
# 2. BED FIELDS
# ============================================================

bed_fields:
- total_beds
- emergency_beds
- surgery_recovery_beds
- long_stay_beds
- isolation_beds
- rehabilitation_beds
- overflow_bed_supported


# ============================================================
# 3. ACTIONS
# ============================================================

allocation_actions:
- reassign_staff_between_departments
- expand_emergency_coverage
- reduce_noncritical_service
- open_overflow_beds
- reserve_isolation_capacity
- increase_rehabilitation_support
- increase_terminal_or_memorial_support
- request_external_staff_support


# ============================================================
# 4. FINAL RULE
# ============================================================

Care quality must depend on
staff fit, fatigue, bed mix,
and department balancing.
