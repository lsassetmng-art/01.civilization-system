# ============================================================
# CIVILIZATION FACILITY PLACEMENT INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for facility and infrastructure placement
inside CivilizationOS nation builder.


# ============================================================
# 1. FACILITY PLACEMENT INTERFACE
# ============================================================

required_fields:
- nation_draft_ref
- facility_type_ref
- region_ref or district_ref
- placement_x
- placement_y
- correlation_id

optional_fields:
- facility_design_package_ref
- rotation_code


# ============================================================
# 2. INFRASTRUCTURE PLACEMENT INTERFACE
# ============================================================

required_fields:
- nation_draft_ref
- infrastructure_type_ref
- region_ref or district_ref
- placement_x
- placement_y
- correlation_id

optional_fields:
- topology_summary


# ============================================================
# 3. VALIDATION / COMPUTE INTERFACE
# ============================================================

required_fields:
- placement_ref
- action_type
- correlation_id

action_type examples:
- validate_placement
- compute_effective_stats
- validate_connectivity
- replace_design
- move_placement
- remove_placement


# ============================================================
# 4. OUTPUT RULE
# ============================================================

All outputs must distinguish:
- allowed
- allowed_with_conditions
- denied
- blocked_by_policy
- unresolved_policy


# ============================================================
# 5. FINAL INTERFACE RULE
# ============================================================

Facility placement interfaces must be:
- placement-aware
- design-aware
- stat-aware
- validation-aware
