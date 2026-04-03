# ============================================================
# NATION SPECIFIC INFRASTRUCTURE OVERRIDE MODEL
# ============================================================

status: canonical
layer: model
scope: infrastructure-placement-and-governance
component: nation-specific-infrastructure-override

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED OVERRIDE FIELDS
# ============================================================

required_override_fields:
- nation_id
- road_authority_profile_override
- rail_authority_profile_override
- station_authority_profile_override
- port_authority_profile_override
- private_operator_permission_override
- approval_rigidity_override
- city_autonomy_override
- public_corporation_bias_override
- enabled_flag


# ============================================================
# 2. FINAL RULE
# ============================================================

Infrastructure governance
for existing nations
must resolve from default plus override,
not from type label alone.
