# ============================================================
# STATION OPERATOR MODE ENUM MASTER
# ============================================================

status: canonical
layer: model
scope: nation-builder-enum-master-phase2
component: station-operator-mode-enum-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENUM VALUES
# ============================================================

station_operator_mode_enum:
- rail_authority_managed
- city_transit_managed
- public_corporation_station_management
- licensed_private_station_management
- mixed_station_management


# ============================================================
# 2. FINAL RULE
# ============================================================

Station operator mode
defines who manages station nodes,
while tenant overlays may still be separate.
