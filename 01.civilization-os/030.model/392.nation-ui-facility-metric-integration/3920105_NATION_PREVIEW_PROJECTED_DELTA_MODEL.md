# ============================================================
# NATION PREVIEW PROJECTED DELTA MODEL
# ============================================================

status: canonical
layer: model
scope: nation-ui-facility-metric-integration
component: nation-preview-projected-delta

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED FIELDS
# ============================================================

required_fields:
- nation_id
- source_action_type
- source_facility_type
- metric_dimension
- current_value
- projected_value
- delta_value
- delta_direction
- explanation_summary


# ============================================================
# 2. SOURCE ACTION TYPES
# ============================================================

source_action_types:
- add_facility
- remove_facility
- replace_facility
- suspend_facility
- reopen_facility


# ============================================================
# 3. FINAL RULE
# ============================================================

Preview deltas must explain
what is likely to change
before the user commits the action.
