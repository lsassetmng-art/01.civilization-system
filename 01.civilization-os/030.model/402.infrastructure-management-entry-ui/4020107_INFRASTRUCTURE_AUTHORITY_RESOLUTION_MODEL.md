# ============================================================
# INFRASTRUCTURE AUTHORITY RESOLUTION MODEL
# ============================================================

status: canonical
layer: model
scope: infrastructure-management-entry-ui
component: infrastructure-authority-resolution

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RESOLUTION INPUTS
# ============================================================

resolution_inputs:
- actor_id
- actor_class
- nation_id
- city_id
- district_id
- infrastructure_action_type
- governance_mode
- current_entry_context


# ============================================================
# 2. RESOLUTION OUTPUTS
# ============================================================

resolution_outputs:
- resolved_authority_class
- resolved_authority_facility_id_or_null
- permission_state
- approval_required_flag
- authority_explanation_summary


# ============================================================
# 3. FINAL RULE
# ============================================================

Infrastructure action
must resolve to one authority posture
before build affordances are exposed.
