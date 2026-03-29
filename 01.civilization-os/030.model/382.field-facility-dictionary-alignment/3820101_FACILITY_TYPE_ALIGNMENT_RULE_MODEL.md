# ============================================================
# FACILITY TYPE ALIGNMENT RULE MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-dictionary-alignment
component: facility-type-alignment-rule

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED ALIGNMENT FIELDS
# ============================================================

alignment_fields:
- facility_type
- master_reference_required
- service_family_source
- canonical_ui_target_source
- operator_compatibility_source
- placement_attributes_local
- visibility_attributes_local
- interaction_attributes_local


# ============================================================
# 2. REQUIRED RULES
# ============================================================

alignment_rules:
- facility_type must exist in facility_type_master before it appears in field facility dictionary
- service_family in placement or visibility layers must match master binding
- canonical_ui_target in placement or visibility layers must match master binding
- field layers may not redefine facility_type into a new synonym
- field layers may not split one facility_type into multiple conflicting identities


# ============================================================
# 3. FINAL RULE
# ============================================================

Alignment exists
to stop identity drift
between map, service, and build systems.
