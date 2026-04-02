# ============================================================
# CIVILIZATION INFRASTRUCTURE PLACEMENT ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official infrastructure placement architecture
inside CivilizationOS nation builder.

This architecture covers:
- rail
- station
- airport
- port
- road corridor
- utility facilities
- infrastructure connection topology


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Infrastructure placement must distinguish:
- infrastructure function definition
- infrastructure node/segment placement
- connection topology
- effective infrastructure stats


# ============================================================
# 2. INFRASTRUCTURE TYPES
# ============================================================

Minimum infrastructure types:
- railway_line
- rail_station
- airport
- port
- road_corridor
- power_facility
- water_facility
- communications_facility
- logistics_hub

Each type must define:
- required connection semantics
- base stat profile
- placement constraints


# ============================================================
# 3. CONNECTION PRINCIPLE
# ============================================================

Infrastructure objects may require connection logic.

Examples:
- station linked to railway line
- airport linked to road/logistics access
- port linked to logistics corridor
- power facility linked to service zone

Broken or isolated infrastructure should be detectable by validation.


# ============================================================
# 4. FINAL ARCHITECTURAL RULE
# ============================================================

Infrastructure placement in CivilizationOS must be:
- type-distinct
- connection-aware
- validation-aware
- DB-controlled
