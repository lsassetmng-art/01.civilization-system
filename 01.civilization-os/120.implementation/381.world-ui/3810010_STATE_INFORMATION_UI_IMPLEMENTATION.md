# ============================================================
# STATE INFORMATION UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: state-information-ui-implementation
component: state-information-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for state information UI
inside Civilization.

This document must align with:

- CONTINENT_MAP_UI_INTERFACE
- WORLD_ENTRY_AND_MAP_FUNCTIONAL_DESIGN
- risk and mortality architecture where relevant


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

State information UI must implement:

- state identity visibility
- territory and scale visibility
- population and city-count visibility
- governance overview visibility where applicable
- risk / situation overview visibility
- route into city map
- safe back routing


# ============================================================
# 3. INITIAL LOAD RULE
# ============================================================

Initial load should prioritize:

1. state identity
2. territory posture
3. population posture
4. city count
5. risk / situation overview
6. governance overview where available


# ============================================================
# 4. RISK / SITUATION OVERVIEW RULE
# ============================================================

State information must include
risk / situation overview.

Representative categories may include:

- war-risk posture
- epidemic posture
- famine posture
- mortality posture
- infrastructure stress posture
- instability posture where applicable

This is a visibility layer only,
not the owner of risk truth.


# ============================================================
# 5. ROUTE RULE
# ============================================================

State information should support:

- open_city_map
- back_to_state_list
- back_to_continent_map

If direct state tap entered from map,
safe back should still preserve orientation.


# ============================================================
# 6. FINAL RULE
# ============================================================

State-information implementation must remain:

- state-readable
- risk-visible
- map-connected
- back-safe
