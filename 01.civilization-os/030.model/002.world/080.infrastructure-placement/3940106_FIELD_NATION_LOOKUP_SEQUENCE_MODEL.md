# ============================================================
# FIELD NATION LOOKUP SEQUENCE MODEL
# ============================================================

status: canonical
layer: model
scope: field-nation-master-integration
component: field-nation-lookup-sequence

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CANONICAL LOOKUP SEQUENCE
# ============================================================

canonical_lookup_sequence:
- resolve_facility_type_master
- load_field_dictionary_attributes
- load_placement_validation_binding
- load_cost_time_master
- evaluate_modifiers
- load_build_execution_binding
- load_service_entry_binding
- load_history_notice_binding
- load_nation_linkage_binding
- load_nation_ui_binding


# ============================================================
# 2. FINAL RULE
# ============================================================

Lookup order must be stable enough
for implementation, debugging, and audit.
