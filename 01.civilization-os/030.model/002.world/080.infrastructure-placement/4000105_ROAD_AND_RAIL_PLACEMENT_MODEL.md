# ============================================================
# ROAD AND RAIL PLACEMENT MODEL
# ============================================================

status: canonical
layer: model
scope: infrastructure-placement-and-governance
component: road-and-rail-placement

owner: Boss
prepared_by: Zero


# ============================================================
# 1. INFRASTRUCTURE LINE TYPES
# ============================================================

infrastructure_line_types:
- road_line
- rail_line
- metro_line
- private_access_road


# ============================================================
# 2. PLACEMENT RULES
# ============================================================

placement_rules:
- roads are placed as linear infrastructure on the field map
- rail lines are placed as rail infrastructure on the field map
- metro lines may use similar line logic with separate authority
- private access roads may be more permissive than public roads
- public road and rail placement requires explicit infrastructure authority


# ============================================================
# 3. FINAL RULE
# ============================================================

Line infrastructure
must be modeled differently
from ordinary building lots.
