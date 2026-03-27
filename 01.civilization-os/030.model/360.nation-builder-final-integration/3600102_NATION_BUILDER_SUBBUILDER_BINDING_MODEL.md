# ============================================================
# NATION BUILDER SUBBUILDER BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: nation-builder-final-integration
component: nation-builder-subbuilder-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. BINDING FIELDS
# ============================================================

binding_fields:
- tab_id
- subbuilder_id
- canonical_model_refs
- structure_layer_refs
- scope_layer_refs
- transition_layer_refs
- preview_refs
- validation_refs
- persistence_refs


# ============================================================
# 2. REQUIRED SUBBUILDER BINDINGS
# ============================================================

required_bindings:
- Power Structure -> power_structure_builder
- Legislature -> legislature_builder
- Executive -> executive_builder
- Appointment and Elites -> appointment_builder
- Factions and Influence -> faction_builder
- Preview and Summary -> integrated_master_refs
- Persistence and Export -> implementation_bridge_refs


# ============================================================
# 3. FINAL RULE
# ============================================================

Nation Builder must declare
which subbuilder owns each editable area
before implementation.
