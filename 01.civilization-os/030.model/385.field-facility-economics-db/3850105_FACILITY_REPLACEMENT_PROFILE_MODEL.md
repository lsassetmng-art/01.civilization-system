# ============================================================
# FACILITY REPLACEMENT PROFILE MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-economics-db
component: facility-replacement-profile

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines replacement cost,
replacement time,
and salvage behavior
for incoming facility placement over existing facilities.


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

facility_replacement_profile_fields:
- replacement_profile_id
- facility_type
- replace_supported
- extra_replace_cost_factor
- extra_replace_time_seconds
- tenant_eviction_required
- salvage_return_factor
- downtime_seconds
- review_required_for_replace
- infrastructure_reuse_supported


# ============================================================
# 3. FINAL RULE
# ============================================================

Replacement must define
both economic consequences
and time consequences.
