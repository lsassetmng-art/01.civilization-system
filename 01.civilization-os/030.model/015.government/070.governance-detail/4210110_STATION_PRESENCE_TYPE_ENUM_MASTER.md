# ============================================================
# STATION PRESENCE TYPE ENUM MASTER
# ============================================================

status: canonical
layer: model
scope: city-builder-enum-master-phase2
component: station-presence-type-enum-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENUM VALUES
# ============================================================

station_presence_type_enum:
- no_station
- minor_station
- standard_station
- major_station
- terminal_station
- multi_station_city


# ============================================================
# 2. FINAL RULE
# ============================================================

Station presence type
defines expected station-node importance
inside the city.
