# ============================================================
# CITY INFORMATION UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: city-information-ui-implementation
component: city-information-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for city information UI
inside Civilization.


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

City information UI must implement:

- city identity visibility
- area and population visibility
- district count visibility
- city-level summary indicators
- route back to city map
- readable city context summary


# ============================================================
# 3. INITIAL LOAD RULE
# ============================================================

Initial load should prioritize:

1. city identity
2. area
3. population
4. district count
5. city-level summary posture
6. local warning posture where available


# ============================================================
# 4. ROUTE RULE
# ============================================================

City information should support:

- back_to_city_map
- back_to_city_list where entered from city list

Return behavior must preserve orientation.


# ============================================================
# 5. FINAL RULE
# ============================================================

City-information implementation must remain:

- city-readable
- summary-first
- back-safe
