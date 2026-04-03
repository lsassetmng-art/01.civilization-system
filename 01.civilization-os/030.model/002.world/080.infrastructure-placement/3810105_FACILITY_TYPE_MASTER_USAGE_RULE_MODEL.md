# ============================================================
# FACILITY TYPE MASTER USAGE RULE MODEL
# ============================================================

status: canonical
layer: model
scope: facility-type-master
component: facility-type-master-usage-rule

owner: Boss
prepared_by: Zero


# ============================================================
# 1. USAGE RULES
# ============================================================

usage_rules:
- facility_type must be reused unchanged across service, routing, placement, and visibility layers
- facility_type must not be renamed per map layer
- service_family and canonical_ui_target must remain compatible with facility_type
- placement dictionaries may add attributes but may not redefine facility meaning
- tenant bindings may specialize entry context but may not redefine facility_type


# ============================================================
# 2. FINAL RULE
# ============================================================

Facility type master exists
to prevent duplicated or drifting facility identities.
