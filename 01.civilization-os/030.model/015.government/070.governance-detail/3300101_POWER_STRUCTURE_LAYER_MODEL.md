# ============================================================
# POWER STRUCTURE LAYER MODEL
# ============================================================

status: canonical
layer: model
scope: nation-builder-power-structure-extension
component: power-structure-layer

owner: Boss
prepared_by: Zero


# ============================================================
# 1. STRUCTURE LOCKED LAYER
# ============================================================

structure_locked_layer_fields:
- regime_type
- constitutional_identity
- head_of_state_type
- head_of_government_type
- legislature_exists
- legislature_structure
- executive_selection_method
- judicial_structure_base
- local_governance_base
- election_system_type
- term_system
- dissolution_rule_base
- amendment_rule
- emergency_rule_ceiling
- sovereignty_distribution_base


# ============================================================
# 2. SCOPE EDITABLE LAYER
# ============================================================

scope_editable_layer_fields:
- executive_power_level
- legislative_override_strength
- ministry_scope_map
- delegation_map
- emergency_power_active
- military_autonomy_level
- religious_influence_level
- noble_influence_level
- business_influence_level
- bureaucracy_influence_level
- local_discretion_level
- enforcement_intensity
- audit_intensity
- appointment_discretion_level
- practical_veto_usage_level


# ============================================================
# 3. REGIME CHANGE EVENT LAYER
# ============================================================

regime_change_event_layer_fields:
- constitutional_reform_in_progress
- revolution_state
- coup_state
- emergency_transition_mode
- regime_restoration_mode
- occupation_or_reconstruction_mode
- legitimacy_crisis_state
- special_constitutional_convention_state


# ============================================================
# 4. FINAL RULE
# ============================================================

No field may exist in ambiguous ownership
between the three layers.
