# ============================================================
# INFRASTRUCTURE REQUIREMENT VALIDATION MODEL
# ============================================================

status: canonical
layer: model
scope: field-map-placement-validation
component: infrastructure-requirement-validation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. INFRASTRUCTURE REQUIREMENT TYPES
# ============================================================

infrastructure_requirement_types:
- road_access_required
- rail_access_preferred
- power_required
- water_required
- network_required
- civic_access_required
- district_anchor_required
- transport_hub_proximity_required


# ============================================================
# 2. VALIDATION RULES
# ============================================================

validation_rules:
- required infrastructure absence may hard block placement
- preferred infrastructure absence may soft warn placement
- district anchor requirements may restrict large civic facilities
- transport-linked facilities may require route or hub access


# ============================================================
# 3. FINAL RULE
# ============================================================

Infrastructure validation must distinguish
between impossible placement
and merely suboptimal placement.
