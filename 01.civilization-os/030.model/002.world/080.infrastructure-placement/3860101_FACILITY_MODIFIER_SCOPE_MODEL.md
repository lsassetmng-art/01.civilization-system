# ============================================================
# FACILITY MODIFIER SCOPE MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-modifier-evaluation
component: facility-modifier-scope

owner: Boss
prepared_by: Zero


# ============================================================
# 1. MODIFIER SCOPES
# ============================================================

modifier_scopes:
- global_scope
- nation_scope
- city_scope
- district_scope
- operator_class_scope
- facility_type_scope
- event_scope
- combined_scope


# ============================================================
# 2. FINAL RULE
# ============================================================

Scopes define where a modifier may apply,
not what the facility means.
