# ============================================================
# UI MODE AND EDIT PERMISSION MODEL
# ============================================================

status: canonical
layer: model
scope: nation-builder-power-structure-extension
component: ui-mode-and-edit-permission

owner: Boss
prepared_by: Zero


# ============================================================
# 1. UI MODES
# ============================================================

ui_modes:
- constitution_mode
- governance_operation_mode
- regime_change_mode


# ============================================================
# 2. CONSTITUTION MODE
# ============================================================

constitution_mode_permissions:
- create_structure_locked_layer
- edit_structure_locked_layer
- define_base_legislature
- define_base_executive
- define_base_judiciary
- define_base_local_governance
- define_base_selection_method
- define_amendment_rule
- define_emergency_rule_ceiling

constitution_mode_lock_rule:
- disabled after nation creation
- except when regime_change_mode explicitly unlocks it


# ============================================================
# 3. GOVERNANCE OPERATION MODE
# ============================================================

governance_operation_mode_permissions:
- edit_scope_editable_layer
- adjust_ministry_scope
- adjust_delegation_map
- activate_or_deactivate_emergency_power
- adjust_local_discretion
- adjust_influence_weights
- adjust_enforcement_intensity
- adjust_audit_intensity
- adjust_practical_control_levels

governance_operation_mode_prohibitions:
- cannot change regime_type
- cannot change election_system_type
- cannot create_or_delete_legislature
- cannot replace executive_selection_method
- cannot rewrite_judicial_structure_base
- cannot rewrite_term_system
- cannot rewrite_amendment_rule


# ============================================================
# 4. REGIME CHANGE MODE
# ============================================================

regime_change_mode_permissions:
- unlock_structure_transition_flow
- perform_constitutional_reform
- perform_regime_conversion
- perform_special_emergency_transition
- modify_locked_structure_fields_through_event
- generate_transition_history_record

regime_change_mode_activation_conditions:
- constitutional_reform_event
- revolution_event
- coup_event
- collapse_event
- restoration_event
- reconstruction_event


# ============================================================
# 5. FINAL RULE
# ============================================================

The UI must always show
which layer is being edited
and why a field is locked.
