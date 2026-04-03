# ============================================================
# EXECUTIVE LOCK AND VALIDATION MODEL
# ============================================================

status: canonical
layer: model
scope: executive-builder
component: executive-lock-and-validation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. LOCK RULE
# ============================================================

lock_rule:
- head_of_state_type is structure-layer locked after nation creation
- head_of_government_type is structure-layer locked after nation creation
- cabinet existence is structure-layer locked after nation creation
- executive_selection_base is structure-layer locked after nation creation
- ministry base existence map is structure-layer locked after nation creation
- emergency_power_ceiling is structure-layer locked after nation creation
- succession_base_rule is structure-layer locked after nation creation

editable_scope_examples:
- current_ministry_scope_map
- practical_ruler_control
- practical_bureaucracy_control
- practical_business_influence_on_executive
- practical_religious_influence_on_executive
- emergency_power_active_state
- appointment_discretion_strength
- enforcement_and_order_intensity


# ============================================================
# 2. VALIDATION RULES
# ============================================================

validation_rules:
- symbolic_ruler_forms must define operational executive holder
- decree_power cannot exceed emergency_power_ceiling without emergency activation
- military_command_power requires command holder definition
- local_override_power must not exceed sovereignty_distribution_base
- succession rule must define acting_successor_rule
- ministry shadow controller cannot reference nonexistent controller class
- cabinet_bypass_supported requires emergency or special chain justification


# ============================================================
# 3. FINAL RULE
# ============================================================

Executive Builder must reject
any configuration that hides
who truly governs.
