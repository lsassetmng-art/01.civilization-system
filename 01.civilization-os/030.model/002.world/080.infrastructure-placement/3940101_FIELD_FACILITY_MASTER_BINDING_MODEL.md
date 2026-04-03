# ============================================================
# FIELD FACILITY MASTER BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: field-nation-master-integration
component: field-facility-master-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines master bindings
for field facility design objects.


# ============================================================
# 2. REQUIRED BINDINGS
# ============================================================

required_bindings:
- facility_type -> facility_type_master
- facility_dictionary_entry -> facility_type_master
- placement_rule -> facility_type_master
- cost_time_master_entry -> facility_type_master
- activation_profile -> facility_type_master
- operation_profile -> facility_type_master
- replacement_profile -> facility_type_master


# ============================================================
# 3. FINAL RULE
# ============================================================

Every field facility object
must trace back to one canonical facility master identity.
