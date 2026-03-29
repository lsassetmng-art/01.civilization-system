# ============================================================
# FIELD PLACEMENT VALIDATION MODEL
# ============================================================

status: canonical
layer: model
scope: field-map-placement-validation
component: field-placement-validation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED INPUTS
# ============================================================

validation_inputs:
- facility_type
- target_lot_id
- target_lot_state
- zoning_profile
- operator_profile
- nation_profile
- city_profile
- infrastructure_profile
- existing_object_profile
- build_mode


# ============================================================
# 2. REQUIRED OUTPUTS
# ============================================================

validation_outputs:
- validation_state
- hard_block_reason_set
- soft_warning_reason_set
- review_required_flag
- replace_supported_flag
- next_allowed_actions


# ============================================================
# 3. VALIDATION STATES
# ============================================================

validation_states:
- place_allowed
- place_allowed_with_review
- place_blocked
- replace_allowed
- replace_blocked


# ============================================================
# 4. FINAL RULE
# ============================================================

Placement validation must resolve
before build confirmation,
not after construction intent is committed.
