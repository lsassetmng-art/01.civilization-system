# ============================================================
# FACILITY DICTIONARY REFERENCE MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-dictionary-alignment
component: facility-dictionary-reference

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines how field facility dictionary entries
reference canonical facility master entries.


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

reference_fields:
- facility_type
- facility_type_master_ref
- service_family_master_ref
- canonical_ui_target_master_ref
- operator_compatibility_master_ref
- placement_rule_ref
- zoning_rule_ref
- visibility_rule_ref
- interaction_rule_ref


# ============================================================
# 3. FINAL RULE
# ============================================================

Every field facility dictionary row
must be traceable
back to one canonical master identity.
