# ============================================================
# NATION TYPE INFRASTRUCTURE DEFAULT MODEL
# ============================================================

status: canonical
layer: model
scope: infrastructure-placement-and-governance
component: nation-type-infrastructure-default

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED DEFAULT FIELDS
# ============================================================

required_default_fields:
- nation_type
- infrastructure_governance_mode_default
- road_operator_mode_default
- rail_operator_mode_default
- station_operator_mode_default
- port_operator_mode_default
- private_operator_permission_default
- public_authority_bias_default
- approval_rigidity_default


# ============================================================
# 2. FINAL RULE
# ============================================================

Nation type provides
baseline infrastructure governance
before nation-specific override is applied.
